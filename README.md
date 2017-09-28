vitae
=====

LaTeX class for producing a curriculum vitae.

Edward Brown, Michigan State University


Provides
--------

Three list styles
1.  \begin{chronlist}{TITLE}  
        \item[DATE 1] text  
        \item[DATE 2] text  
        ...  
    \end{chronlist}

2.  \begin{publist}{CATEGORY}  
        \item REFERENCE 1  
        \item REFERENCE 2  
        ...  
    \end{chronlist}

3.  \begin{genericlist}{CATEGORY}  
	    \item ITEM 1  
        \item ITEM 2  
	    ...  
	\end{genericlist}

Here TITLE is the list title, e.g., ``Education'', and CATEGORY is the type of reference list, e.g., "Refereed," "Conference Proceedings," etc.

Installation and usage
----------------------

After cloning the project directory, cd into it and run the install script
    
    $./install /path/to/texmf

Here the argument to the command is somewhere on the `TEXPATH`. For example, on my Mac, I do

    $./install ~/Library/texmf

The install script creates in this texmf directory a subdirectory, 
`tex/latex/vitae`,
that contains `vitae.cls`.  It then builds the documentation in a 
subdirectory of `texmf` called `doc/latex/vitae`.

For an example CV, look in the `doc` subdirectory.


