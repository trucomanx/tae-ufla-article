# separator-rule package


Creates macros to show separator rules

![Screenshot](https://sourceforge.net/p/latex-macros-packages/separator-rule/ci/main/tree/screenshot.png)

## Install package
Put the separator-rule.sty file in any of these locations

* Put the `separator-rule.sty` file in the same path of main tex file.
* Execute the commmand:

	kpsewhich -var-value=TEXMFHOME

    and this returns the path of local tex files. By example, if returns 

	/home/username/texmf

    then, put the `separator-rule.sty` file in the directory.

	/home/username/texmf/tex/latex/separator-rule/separator-rule.sty

## Load the package

To load the package use the next command in the preamble of main tex document.

	\usepackage{separator-rule}



