

import { Injectable, UnauthorizedException } from "@nestjs/common";
import { PassportStrategy } from "@nestjs/passport";
import { InjectRepository } from "@nestjs/typeorm";
import { Strategy, ExtractJwt } from 'passport-jwt';
import { Repository } from "typeorm";
import { User } from "./user.model";
import { DecodedToken } from "./decoded-token.dto";
/* 
npm install
Clase para validar el token JWT que viene del frontend en cada petición
Implementación personalizada de una estrategia de autenticación usando 
JWT con ayuda del módulo passport-jwt y que se instegra en la autenticación de nestjs

Implica:
    * agregar JwtValidator en providers en app.module.ts
    * agregar PassportModule en imports en app.module.ts

Con esto se valida el token JWT globalmente en todos los controladores
*/
@Injectable()
export class JwtValidator extends PassportStrategy(Strategy) {

    constructor(@InjectRepository(User) private userRepository: Repository<User>) {
        // Configurar la extracción del token y la clave para verificar la firma del token
        super({
            jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(), // extrae token de header Authorization
            ignoreExpiration: false,
            secretOrKey: 'admin'
        });
    }

    // Valida el contenido del token JWT que llega de frontend
    async validate(payload: DecodedToken) {
        // Comprobar si el usuario es correcto
        const user = await this.userRepository.findOne({
            where: {
                id: payload.sub // id del usuario que viene en el token
            }
        });

        if(!user)
            throw new UnauthorizedException('Usuario incorrecto'); // 401

        // TODO quitar contraseña antes de devolver el usuario
        return user;
    }


}