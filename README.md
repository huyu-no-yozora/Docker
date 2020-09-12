# src-article
[![License](https://img.shields.io/badge/license-MIT-blue)](LICENSE)
![Language](https://img.shields.io/static/v1?label=language&message=LaTeX&color=blueviolet)
![release](https://img.shields.io/github/v/release/huyu-no-yozora/src-article)

<!-- for public repo -->
<!-- ![release](https://img.shields.io/github/v/release/[user-name]/[repository-name]) -->
<!-- for private repo -->
<!-- ![release](https://img.shields.io/static/v1?label=version&message=v1.0.0&color=brightgreen) -->


## Concept
This is template repository for making some LaTeX document.  
I will publish this repository to convey the wonderfulness of LaTeX.


## Contents
* LaTeX template code  
  * [jsarticle](https://github.com/huyu-no-yozora/src-article)
  * [jsbook](https://github.com/huyu-no-yozora/src-book)


## How to use it?
1. clone repository
   ```bash
   git clone git@github.com:huyu-no-yozora/src-article.git
   ```
1. configuration of setup script
   ```bash
   cd src-article/tool
   vim setup.sh
   ```
1. <font color="red">edit value of "OUTNAME" and "SUBDIR" variable</font>

1. execution of setup script
   ```bash
   chmod u+x setup.sh
   ./setup.sh
   ```
1. edit your LaTeX code
 
1. build your code
   (you can use Makefile...)
   ```bash
   make           # build
   make clean     # remove unnecessary file
   make clean-all # remove all including generated pdf
   ```


## License
The source code and documentation in this repository are released under the [MIT License](LICENSE).


