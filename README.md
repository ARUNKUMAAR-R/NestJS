## Simple NestJS APP

## Install NodeJS on Ubuntu
sudo apt update
sudo apt install -y nodejs npm

## Install NestJS CLI
sudo npm install -g @nestjs/cli

## Create New NestJS project
nest new hello-world-app

## Edit 'src/app.controller.ts' file
import { Controller, Get } from '@nestjs/common';

@Controller()
export class AppController {
  @Get()
  getHello(): string {
    return 'Hello World!';
  }
}

## Build App
npm run build

## Install PM2 and start NestJS app with PM2
sudo npm install -g pm2
pm2 start dist/main.js --name hello-world-app
pm2 startup && pm2 save



