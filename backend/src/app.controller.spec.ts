import { Test, TestingModule } from '@nestjs/testing';
import { HealthController } from './modules/health/health.controller';
import { HealthService } from './modules/health/health.service';

describe('AppController', () => {
  let healthController: HealthController;

  beforeEach(async () => {
    const app: TestingModule = await Test.createTestingModule({
      controllers: [HealthController],
      providers: [HealthService],
    }).compile();

    healthController = app.get<HealthController>(HealthController);
  });

  describe('root', () => {
    it('should return "Hello World!"', () => {
      expect(healthController.getHealth()).toBe('Hello World!');
    });
  });
});
