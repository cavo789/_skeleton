# Project skeleton

>  This project contains scripts to start more quickly a project.   The gulp folder contains a lot of scripts that will allow to beautify, lint, minify, ... files and generate the dist folder.

## Building

Use build.bat to run each tasks in the predefined order.

## Tasks order

### 1. Main

1. **backup** : take a backup of all files under the source folder (called `src`).  The zip file  will derived from the package.json file, use `name` and `version` and create f.i. project_v1.0-20170203.zip) 

### 2. SRC

1. **phpcs** : run PHP code sniffer to check the quality of the code
2. **phpmd** : run PHP Mess Detector to check the quality of the code
3. **csslint** : run css linting (check syntax)
4. **jslint** : run js linting (check syntax)
5. **jsonlint** : run json linting (check syntax)
6. **phplint** : run php linting (check syntax)
7. **csscbf** : run css code beautifier
8. **jscbf** : run js code beautifier
9. **jsoncbf** : run json code beautifier
10. **phpcbf** : run php code beautifier

### 3. DIST

1. **delete** : kill the `dist` folder, remove the previous generated files
2. **copy** : copy files from the `src` folder to the `dist` folder
3. **js_removedebug** : remove debug infos in javascript files
4. **php_removedebug** : remove debug infos in php files
5. **cssmin** : minify the css files
6. **jsmin** : minify the js files
7. **jsbanner** : add a banner to .js files
8. **phpbanner** : add a banner to .php files
9. **chmod** : set the `dist` folder read-only

## package.json

The  `package.json` file is used by the GULP scripts so that file should exists.   

 `package.json` should be edited and the `gulp` node should be created like illustrated below. 

Each task defined in the `gulp` folder will read their own configuration from `package.json`.

```json
{
  "name": "project_name",
  "version": "1.0.0",
  "description": "small description of the project",
  "main": "index.php",
  "devDependencies": {
    "csslint-stylish": "0.0.5",
    "del": "^2.2.2",
    "gulp": "^3.9.1",
    "gulp-batch-replace": "0.0.0",
    "gulp-clean-css": "^2.3.2",
    "gulp-cssbeautify": "^0.1.3",
    "gulp-csslint": "^1.0.0",
    "gulp-header": "^1.8.8",
    "gulp-html-replace": "^1.6.2",
    "gulp-htmlhint": "^0.3.1",
    "gulp-htmlmin": "^3.0.0",
    "gulp-if": "^2.0.2",
    "gulp-jshint": "^2.0.4",
    "gulp-json-format": "^1.0.0",
    "gulp-jsonlint": "^1.2.0",
    "gulp-minify-css": "^1.2.4",
    "gulp-phplint": "^0.3.4",
    "gulp-remove-html-comments": "^1.0.1",
    "gulp-shell": "^0.5.2",
    "gulp-uglify": "^2.0.1",
    "gulp-zip": "^4.0.0",
    "gutil": "^1.6.4",
    "jshint": "^2.9.4",
    "jshint-stylish": "^2.2.1",
    "phplint": "^1.7.1",
    "require-dir": "^0.3.1",
    "run-sequence": "^1.2.2"
  },
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "repository": {
    "type": "git",
    "url": "git+https://github.com/cavo789/PROJECT_NAME.git"
  },
  "keywords": [],
  "author": "christophe@aesecure.com",
  "license": "MIT",
  "bugs": {
    "url": "https://github.com/cavo789/PROJECT_NAME/issues"
  },
  "homepage": "https://github.com/cavo789/PROJECT_NAME#readme",
  "gulp": {    
    "editor": {
      "tab_size": 3,
      "encoding": "utf-8"
    },
    "paths": {
      "archives": "backups",
      "exclude": "libs",
      "logging": "logs",
      "source": "src",
      "target": "dist"
    },
    "tasks": {
	  "backup": {
	    "doit": 1
	  },
	  "source": {
	    "code_quality": {
          "sniffer": {
            "doit": 1
          },
          "mess_detector": {
            "doit": 1
          }
		},
        "lint": {
          "css": {
            "doit": 1
          },
          "js": {
            "doit": 1
          },
          "json": {
            "doit": 1
          },
          "php": {
            "doit": 1
          }
        },
		"beautifier": {
          "css": {
            "doit": 1
          },
          "js": {
            "doit": 1
          },
          "json": {
            "doit": 1
          },
          "php": {
            "doit": 1
          }
        }
      },
      "dist": {
        "delete": {
          "doit": 1
        },
		"copy": {
          "doit": 1
        },
        "removedebug": {
          "js": {
            "doit": 1
          },
          "php": {
            "doit": 1
          }
		},
		"minify": {
          "css": {
            "doit": 1
          },
          "js": {
            "doit": 1
          }
        },
		"banner": {
		  "header": [
	        "<?php",   
            "/**",
            "* <%= info.name %> - <%= info.description %>",
            "* @version   : <%= info.version %>",
            "* @author    : <%= info.author %>",
            "* @license   : <%= info.license %>",
            "* @url       : <%= info.homepage %>",
            "* @package   : <%= new Date().toISOString() %>", 
            "*/",
            "?>",
			""
	      ],
          "js": {
            "doit": 1
          },
          "php": {
            "doit": 1
          }
		},
		"chmod": {
          "doit": 1
        }
      }      
    }
  }
}
```

## Credits

Christophe Avonture | [https://www.aesecure.com](https://www.aesecure.com) 

