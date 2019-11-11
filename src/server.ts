import express, { Request, Response } from 'express';

const server = express();

server.get('/', (req, res) => {
  res.send('Helloooo GDG DevFest! This is Moz testing review-app feature in azure pipeline. Pull request will be initiated and approved triggering azure pipeline to deploy merged code onto azure K8 service.\n');
});

export { server };
