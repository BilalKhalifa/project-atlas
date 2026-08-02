import { Injectable } from '@nestjs/common';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class HealthService {
  constructor(private readonly configService: ConfigService) {}

  getHealth() {
    return {
      status: 'ok',
      service: 'Atlas API',
      version: '0.1.0',
      environment: this.configService.get<string>('NODE_ENV'),
      port: this.configService.get<number>('PORT'),
    };
  }
}
