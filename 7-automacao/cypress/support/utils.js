import { faker } from '@faker-js/faker';

export function gerarEmailAleatorio() {
  return faker.internet.email().toLowerCase();
}