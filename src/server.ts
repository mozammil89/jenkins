import express, { Request, Response } from 'express';

const server = express();

server.get('/', (req, res) => {
  res.send('Helloooo GDG DevFest !!!\n');
});

export { server };
