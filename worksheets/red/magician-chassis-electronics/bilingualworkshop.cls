\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bilingualworkshop}[2018/08/01 - Simple Worksheet Class, Including Logo]
\RequirePackage{palatino}
\LoadClassWithOptions{article}

\usepackage{graphicx}
\usepackage{fancyhdr}
\usepackage{lastpage}
\RequirePackage{ifthen}

\newif\ifcym
\newif\ifeng
     



\def\@wsversion{\relax}
\newcommand{\wsversion}[1]{\gdef\@wsversion{#1}}

\def\@wslang{\relax}
\newcommand{\wslang}{\ifthenelse{\engtrue}{en}{cy}}

\def\@mainlogo{\relax}
\newcommand{\aulogo}[1]{\gdef\@mainlogo{\protect #1}}


\def\@footerLogoOne{\relax}
\newcommand{\footerLogoOne}[1]{\gdef\@footerLogoOne{\protect #1}}

\def\@footerLogoTwo{\relax}
\newcommand{\footerLogoTwo}[1]{\gdef\@footerLogoTwo{\protect #1}}

\def\@footerLogoThree{\relax}
\newcommand{\footerLogoThree}[1]{\gdef\@footerLogoThree{\protect #1}}

\def\@footerLogoFour{\relax}
\newcommand{\footerLogoFour}[1]{\gdef\@footerLogoFour{\protect #1}}

\def\@footerLogoFive{\relax}
\newcommand{\footerLogoFive}[1]{\gdef\@footerLogoFive{\protect #1}}

% Custom Document Formatting
\newcommand\decorativeline[1][1pt]{
	\par\noindent%
	\rule[0.5ex]{\linewidth}{#1}\par
}

% Set the Paper Size and margins
\RequirePackage{geometry}
\geometry{margin=1.0in}
\geometry{headheight=72.31699pt}

\pagestyle{fancyplain}
\rhead{\fancyplain{}{
	\ifthenelse{\equal{\@mainlogo}{\relax}}{}
	{ % Create With Logo
	%\begin{minipage}[t]{1\columnwidth}%
		%\begin{flushright}
			\vspace{0.5in}
			\@mainlogo
			\vspace{0in}
		%\par\end{flushright}%
	%\end{minipage}
	}}}
    
% Tom edited this bit to add total pages
\cfoot{
	\thepage\ / \pageref{LastPage}
}

% Tom added this bit to create a footer of associated organisation/institute logos
\lfoot{\fancyplain{}{
	\ifthenelse{\equal{\@footerLogoOne}{\relax}}{} { % Create With Logo
	%\begin{minipage}[t]{1\columnwidth}%
		%\begin{flushright}
			\vspace{-0.3in}
			\@footerLogoOne \@footerLogoTwo \@footerLogoThree \@footerLogoFour \@footerLogoFive 
			\vspace{0.8in}
		%\par\end{flushright}%
	%\end{minipage}
	}}}
 

\rfoot{\fancyplain{}{
\ifthenelse{\equal{\@wsversion}{\relax}}{}{Ver. \@wsversion}
\ifthenelse{\equal{\@wslang}{\relax}}{}{\@wslang}
}
}
     
   
\usepackage[T1]{fontenc}
\usepackage[utf8]{inputenc}
    

\usepackage[welsh,english]{babel}

 
  \newcommand{\cy}[1]{%
       \ifcym\selectlanguage{welsh}#1\fi}
  \newcommand{\en}[1]{%
       \ifeng\selectlanguage{english}#1\fi}
       
\renewcommand{\maketitle}{\makeworkshoptitle}
\newcommand\makeworkshoptitle{
	{\vskip 2em%
 \begin{center}%
  {\LARGE \@title \par}%
 \end{center}}
	% To, From, Subject Block
 
	\decorativeline\bigskip{}
    %\printcy
}