vitae
=====

LaTeX class for producing a curriculum vitae.

Edward Brown, Michigan State University


Provides
--------

Three list styles:

1. `chronlist`, used for listing date-activity pairs

        \begin{chronlist}
            \item[DATE 1] text
            \item[DATE 2] text
            ...
        \end{chronlist}

2. `publist` for lists of publications, talks, etc. This is a wrapper for the `etaremune` package, which lists the item numbers in reverse order. This is a handy feature for counting numbers of publications.

        \begin{publist}
            \item REFERENCE 1
            \item REFERENCE 2
            ...
        \end{chronlist}

3. `genericlist`: unbulleted listing

        \begin{genericlist}
            \item ITEM 1
            \item ITEM 2
            ...
        \end{genericlist}

Two style of section headers

1. `\sectionheader{TITLE}`: produces the text `TITLE` in small caps with a light grey bar running across the page. A horizontal line is generated along the text baseline.

2. `\publicationheader{CATEGORY}`: produces the text `CATEGORY` in small caps, with no decoration. Useful for specifying categories of publications, e.g., "Refereed," "Conference Proceedings," etc.

Installation and usage
----------------------

After cloning the project directory, cd into it and run the install script
    
    $./install /path/to/texmf

Here the argument to the command is somewhere on the `TEXPATH`. For example, on my Mac, I do

    $./install ~/Library/texmf

The install script creates in this texmf directory a subdirectory, 
`tex/latex/vitae`,
that contains `vitae.cls`.  It then builds the documentation in a 
subdirectory of `texmf` called `doc/latex/vitae`. Look in the documentation for an example CV.


