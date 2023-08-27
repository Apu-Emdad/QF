const express = require('express')
const next = require('next')
const compression = require('compression');

require('dotenv').config();

const port = parseInt(process.env.PORT, 10) || 3000;
const dev = process.env.NODE_ENV !== 'production';
const app = next({ dev, quiet: !dev });
const handle = app.getRequestHandler()

app.prepare()
  .then(() => {
    const server = express()
    server.use(compression());

    server.get('*', (req, res) => {
      return handle(req, res)
    })

    server.listen(port, (err) => {
      if (err) throw err
      console.log(`> Ready on http://localhost:${port}`);
      // https://github.com/dotuan9x/nextjs-boilerplate/tree/master
    })
  })
  .catch((ex) => {
    console.error(ex.stack)
    process.exit(1)
  })