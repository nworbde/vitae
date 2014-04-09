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
\newlength{\MyLength}

\newenvironment{chronlist}[1]{%
\setlength{\MyLength}{\linewidth}%
\addtolength{\MyLength}{-2\fboxsep}%
\addtolength{\MyLength}{-2\fboxrule}%
\colorbox{grey95}{\makebox[\MyLength][l]{\sc\large\textbf{ #1\hrulefill}}}%
\begin{list}{}{ \setlength{\topsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\leftmargin}{96pt}%
                \setlength{\labelwidth}{86pt}%
                \setlength{\labelsep}{4pt}%
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\partopsep}{1.0ex plus0.1ex minus0.1ex}%
                \setlength{\itemsep}{0ex}%
                \renewcommand{\makelabel}[1]{\parbox[t]{86pt}{\it
                ##1}\hfill}}}%
{\end{list}}

\newenvironment{genericlist}[1]{%
\setlength{\MyLength}{\linewidth}%
\addtolength{\MyLength}{-2\fboxsep}%
\addtolength{\MyLength}{-2\fboxrule}%
\colorbox{grey95}{\makebox[\MyLength][l]{\sc\large\textbf{ #1\hrulefill}}}%
\begin{list}{}{ \setlength{\topsep}{1.0ex plus0.1ex minus0.1ex}
               \setlength{\leftmargin}{36pt}
                \setlength{\labelwidth}{0pt}
                \setlength{\labelsep}{0pt}
                \setlength{\itemindent}{-24pt}
                \setlength{\itemsep}{0ex}
                \setlength{\parsep}{1.0ex plus0.1ex minus0.1ex}
                \setlength{\partopsep}{0ex plus0.1ex minus0.1ex}}}
{\end{list}}

\newenvironment{publist}[1]{{\sc\large\textbf{ #1}}%
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
