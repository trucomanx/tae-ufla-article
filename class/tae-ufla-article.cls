%% source:
%% https://github.com/trucomanx/separator-rule

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{tae-ufla-article}[2023/04/16 Example LaTeX class]

% Options
%\DeclareOption{red}{\renewcommand{\wordcolour}{sharelatexcolour}}
\DeclareOption*{\PackageWarning{separator-rule}{The option ‘\CurrentOption’ is current unknown}}
\ProcessOptions\relax

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\LoadClass[twocolumn,twoside,a4]{article}


\RequirePackage{comment}
\RequirePackage{setspace}
\RequirePackage{leading}
\RequirePackage{anyfontsize}



%%\RequirePackage{graphicx} %% needed for \resizebox





\RequirePackage[left=20mm,right=20mm,top=20mm,bottom=25mm]{geometry}
\setlength{\columnsep}{4.23mm}

\RequirePackage{titlesec}

\RequirePackage[T1]{fontenc}
%\renewcommand{\rmdefault}{uaq}
%\renewcommand{\sfdefault}{ugq}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Math format

%%\RequirePackage{amssymb} %% needed for \blacktriangleleft

\RequirePackage[fleqn]{amsmath}
\setlength{\mathindent}{0cm}%indento os equation
%\numberwithin{equation}{section}
%\everymath{\displaystyle} %enable inline math format similar to display

%% http://www.ams.org/arc/tex/amsmath/amsldoc.pdf
%\renewcommand{\theequation}{<\arabic{equation}>}% number format



\newlength{\myeqlengthgap}
\setlength{\myeqlengthgap}{6mm-\baselineskip}% %deberia ser 8mm pero funciona mejor con 6mm
% some text \the\myeqlengthgap and shows -4pt

\makeatletter
\renewenvironment{equation}{%
  \incr@eqnum
  \mathdisplay@push
  \st@rredfalse \global\@eqnswtrue
  \vspace{\myeqlengthgap}
  \mathdisplay{equation}%
}{%
  \vspace{\myeqlengthgap}
  \endmathdisplay{equation}%
  \mathdisplay@pop
  \ignorespacesafterend
}
\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Figure Caption format

\RequirePackage{caption}
\captionsetup{
%format=plain,
%indention=0.5cm,
%margin=10pt, %left margin of caption figure %{left amout,right amount}
%font=small,
skip=2mm,%The vertical space between the caption and float (figure o table)
labelfont=bf,
singlelinecheck=false,
justification=raggedright}

\setlength{\intextsep}{8mm} %This is the space that is inserted to separate (before and after)floats from the surrounding text.

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Title format
\newcommand{\teatitleformat}[1]
{
{\centering\fontsize{16pt}{19.2pt}\selectfont\textbf{\uppercase{#1}}\par\vspace{8mm}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Author format
\newcommand{\taeauthorformat}[2]
{
\noindent{\fontsize{12}{14.2}\selectfont\textbf{#1}\par}
\noindent{\hspace*{5mm}{\fontsize{9}{10.8}\selectfont#2\par}}\vspace{4mm}%\leading{10.8pt}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Abstract
%% https://tex.stackexchange.com/questions/148508/how-does-fontsize-work
\newenvironment{teaabstract}
{
\noindent
\begin{minipage}[t]{27mm}
\noindent
\hspace{9mm}
\fontsize{10}{12}\selectfont\textbf{Abstract:}
\end{minipage}
\begin{minipage}[t]{\textwidth-27mm}
\fontsize{10}{12}\selectfont%
}
{
\par
\end{minipage}\\[5mm]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Keywords
\newenvironment{teakeywords}
{
\noindent
\begin{minipage}[t]{\textwidth}
\fontsize{10pt}{14pt}\selectfont\textbf{Keywords:}%
}
{
\par
\end{minipage}\\[3mm]
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Data
\newenvironment{teadata}
{
\noindent
\begin{minipage}[t]{\textwidth}
\centering
\fontsize{10pt}{12pt}\selectfont%
}
{
\par
\rule{10cm}{1pt}\\[0mm]
\end{minipage}\\[5mm]
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



\titleformat{\section}%command
{\centering\fontsize{13pt}{15.6pt}\selectfont\bfseries\uppercase}%format
{\thesection}%label
{10pt}%sep number text
{\vspace{5mm}}%before
{\vspace{5mm}}%after

\titleformat{\subsection}%command
{\fontsize{13pt}{15.6pt}\selectfont\bfseries}%format
{\thesubsection}%label
{10pt}%sep number text
{\vspace{5mm}}%before
{\vspace{5mm}}%after


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% References

\RequirePackage[style=abnt]{biblatex}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Foot line
\newcommand{\taefoottext}{THEORETICAL AND APPLIED ENGINEERING}
\newcommand{\taeheadoddtext}{MULTISENSOR ANALYSIS}
\newcommand{\taeheadeventext}{TRINDADE}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\fancyhf{} % clear all header fields

\fancyhead[RO]{\fontsize{6}{10}\selectfont\taeheadoddtext} % right and odd pages
\fancyhead[LE]{\fontsize{6}{10}\selectfont\taeheadeventext} % left and even pages

\renewcommand{\headrulewidth}{0pt} % no line in header area

\fancyfoot[LE,RO]{\thepage}           % page number in "outer" position of footer line
\fancyfoot[RE,LO]{\fontsize{6}{10}\selectfont\taefoottext} % other info in "inner" position of footer line

