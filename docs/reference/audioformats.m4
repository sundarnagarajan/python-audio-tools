%This work is licensed under the
%Creative Commons Attribution-Share Alike 3.0 United States License.
%To view a copy of this license, visit
%http://creativecommons.org/licenses/by-sa/3.0/us/ or send a letter to
%Creative Commons,
%171 Second Street, Suite 300,
%San Francisco, California, 94105, USA.

\documentclass[PAPERSIZE]{scrbook}
\setlength{\pdfpagewidth}{\paperwidth}
\setlength{\pdfpageheight}{\paperheight}
\setlength{\textwidth}{6in}
\usepackage{amsmath}
\usepackage{graphicx}
\usepackage{picins}
\usepackage{fancyvrb}
\usepackage{relsize}
\usepackage{array}
\usepackage{wrapfig}
\usepackage{subfig}
\usepackage{multicol}
\usepackage{paralist}
\usepackage{textcomp}
\usepackage{fancyvrb}
\usepackage{multirow}
\usepackage{rotating}
\usepackage[toc,page]{appendix}
\usepackage{hyperref}
\usepackage{units}
\usepackage{color}
\definecolor{gray}{rgb}{0.5,0.5,0.5}
\definecolor{blue}{rgb}{0.0,0.0,1.0}
\definecolor{red}{rgb}{1.0,0.0,0.0}
\usepackage[vlined,lined,commentsnumbered]{algorithm2e}
\usepackage{lscape}
\newcommand{\xor}{\textbf{ xor }}
%#1 = i
%#2 = byte
%#3 = previous checksum
%#4 = shift results
%#5 = new xor
%#6 = new CRC-16
\newcommand{\CRCSIXTEEN}[6]{\text{checksum}_{#1} &= \text{CRC16}(\texttt{#2}\xor(\texttt{#3} \gg \texttt{8}))\xor(\texttt{#3} \ll \texttt{8}) = \text{CRC16}(\texttt{#4})\xor \texttt{#5} = \texttt{#6}}
\newcommand{\LINK}[1]{\href{#1}{\texttt{#1}}}
\newcommand{\REFERENCE}[2]{\item #1 \\ \LINK{#2}}
\newcommand{\VAR}[1]{``{#1}''}
\newcommand{\ATOM}[1]{\texttt{#1}}
\newcommand{\ALGORITHM}[2]{\begin{algorithm}[H]
\DontPrintSemicolon
\SetKw{READ}{read}
\SetKw{WRITE}{write}
\SetKw{UNARY}{read unary}
\SetKw{WUNARY}{write unary}
\SetKw{SKIP}{skip}
\SetKw{ASSERT}{assert}
\SetKw{IN}{in}
\KwIn{#1}
\KwOut{#2}
\BlankLine
}
\newcommand{\EALGORITHM}{\end{algorithm}}
\long\def\symbolfootnote[#1]#2{\begingroup%
\def\thefootnote{\fnsymbol{footnote}}\footnote[#1]{#2}\endgroup}
\long\def\symbolfootnotemark[#1]{\begingroup%
\def\thefootnote{\fnsymbol{footnote}}\footnotemark[#1]\endgroup}
\long\def\symbolfootnotetext[#1]#2{\begingroup%
\def\thefootnote{\fnsymbol{footnote}}\footnotetext[#1]{#2}\endgroup}
\title{Audio Formats Reference}
\author{Brian Langenberger}
\begin{document}
\maketitle
\tableofcontents
\include{introduction}
\include{basics}
\include{wav}
\include{aiff}
\include{au}
\include{shorten}
\include{flac}
\include{wavpack}
\include{ape}
\include{mp3}
\include{m4a}
\include{alac}
\include{vorbis}
\include{oggflac}
\include{speex}
\include{musepack}
\include{dvda}
\include{freedb}
\include{musicbrainz}
\include{musicbrainz_mmd}
\include{replaygain}
\begin{appendices}
\include{references}
\include{license}
\end{appendices}
\end{document}
