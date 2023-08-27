# SCI APP (Quality Framework)
## How to start project locally / Installation

It requires [Node.js](https://nodejs.org/) v16+ to run.

For Local development start
```sh
- run npm install or yarn install (yarn install is recomended)
- run yarn dev for development mode
```

For Production development start
```sh
- npm run prod or yarn prod (yarn is recomended)
```

## Commands
```sh
- yarn dev [To start development server]
- yarn build [To run production build]
- yarn prod [To build and run in production mode]
- yarn lint [To check if there is any ]
- yarn lint:fix [To fix all fixable lint errors]
```

## Folder Structure

|--- .github\workflows # Files for github actions / CI/CD <br/>
|--- .husky # Files for pre-commit / husky <br/>
|--- dist # Build files after running build command <br/>
|--- node_modules # Folder for storing installed packages <br/>
|--- public # Folder for assets, images, media <br/>
|--- src #Source files <br/>
- common # All files / folders that will be used globally / for common purpose
- config # Core / global configuration files will be includes, [exm: Request, response interceptor]
- interfaces # All interfaces will be placed here
- layout # Files / component for different layout like admin/app will be placed here
- pages # special folder for routing (as nextjs uses page routing)
- services # Here some common functionalities will be placed, that can be http-request or some other functionality
- styles # All common styles will be placed here
- utils # Utility / helper functions will be here

|--- env.example # Environment files <br/.
|--- .eslintrc.json # Config file for eslint <br/>
|--- .gitignore # git files to setup files/folder which are supposed to not be pushed to github <br/>
|--- .next.config.js # next js configuration file (Port, plugin or other) <br/>
|--- package.json # File to manage project (version, libraries, project name and commands include) <br/>
|--- README.md # Project documentation file <br/>
|--- server.js # Server for running ssr <br/>
|--- tsconfig.json # Config file for typescript (Like alias and other) <br/>
|--- yarn.lock # Recod file of packages installed <br/>
