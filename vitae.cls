%
% vitae.cls - style for formatting a CV
% Edward Brown, Michigan State University
%

\def\fileversion{2.0}
\def\filedate{2007/08/24}

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{vitae}[\filedate, \fileversion]
\typeout{%
  Document Style: `vitae' v\fileversion \space <\filedate>}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
\usepackage{color}
\usepackage{etaremune}
\LoadClass{report}
\definecolor{grey95}{rgb}{0.949,0.949,0.949}

% Set page lengths
\setlength{\oddsidemargin}{0pt}
\setlength{\topmargin}{0pt}
\setlength{\textheight}{632pt}
\setlength{\textwidth}{456pt}
\setlength{\parindent}{0pt}
\setlength{\parskip}{2.0ex plus0.1ex minus0.1ex}

% lengths for various boxes
\newlength{\chronlistTitlelength}   % length of grayscale box containing title of a chronological list

\newenvironment{chronlist}[1]{%
\setlength{\chronlistTitlelength}{\linewidth}
\addtolength{\chronlistTitlelength}{-2\fboxsep}
\addtolength{\chronlistTitlelength}{-2\fboxrule}
\vspace{4.0ex plus 1ex minus 1ex}
\colorbox{grey95}{\makebox[\chronlistTitlelength][l]{\scshape\Large #1\hrulefill}}%
\begin{list}{}{ \nopagebreak\setlength{\topsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\leftmargin}{96pt}%
                \setlength{\labelwidth}{86pt}%
                \setlength{\labelsep}{4pt}%
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\itemsep}{0ex}%
                \renewcommand{\makelabel}[1]{\parbox[t]{86pt}{\itshape
                ##1}\hfill}}}%
{\end{list}}

\newenvironment{genericlist}[1]{%
\setlength{\chronlistTitlelength}{\linewidth}
\addtolength{\chronlistTitlelength}{-2\fboxsep}
\addtolength{\chronlistTitlelength}{-2\fboxrule}
\vspace{4.0ex plus 1ex minus 1ex}
\colorbox{grey95}{\makebox[\chronlistTitlelength][l]{\scshape\Large #1\hrulefill}}%
\begin{list}{}{ \nopagebreak\setlength{\topsep}{-1ex plus0.3ex minus0.3ex}
               \setlength{\leftmargin}{36pt}
                \setlength{\labelwidth}{0pt}
                \setlength{\labelsep}{0pt}
                \setlength{\itemindent}{-24pt}
                \setlength{\itemsep}{0ex}
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}}}
{\end{list}}

\newenvironment{publist}[1]{\vspace{4.0ex plus 1.0ex minus 1.0ex}{\scshape\Large #1}%
%\begin{list}{}{ \setlength{\leftmargin}{36pt}
%                \setlength{\labelwidth}{0pt}
%                \setlength{\labelsep}{0pt}
%                \setlength{\itemindent}{-24pt}
%                \setlength{\topsep}{1.5ex plus0.1ex minus0.1ex}
%                \setlength{\itemsep}{0ex}
%                \setlength{\partopsep}{0ex plus0.1ex minus0.1ex}}}
%{\end{list}}
\begin{etaremune}}
{\end{etaremune}}

\sloppy
