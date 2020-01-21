import express, { Request, Response } from 'express';

const server = express();

server.get('/', (req, res) => {
  res.send('Helloooo GDG DevFest!!! This is Moz, testing GCP.\n');
});

export { server };
