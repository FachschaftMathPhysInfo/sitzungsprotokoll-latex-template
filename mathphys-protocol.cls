\NeedsTeXFormat{LaTeX2e}[2007/07/20]
\ProvidesClass{mathphys-protocol}[2020/04/20]
\LoadClass[fontsize=11pt,a4paper]{scrartcl}[2011/04/02]
\RequirePackage{
     geometry,           % sets headersize
     graphicx,           % use graphic-files
     ifthen,             % logic determining the logo
     kvoptions,          % key=value-stuff
     lastpage,           % page n of m
     marvosym,           % for the little phone and fax symbols
     scrlayer-scrpage,   % header & footer
     tikz,               % used for absolute placing of logo and stuff
     xcolor,             % colored text
     hyperref,           % use cool pdf-features,
     xstring
}
\RequirePackage[mono=false]{libertine}    % use linux-libertine font family
\geometry{
     top=5cm,
     bottom=4cm,
}
\pagestyle{scrheadings}
\hypersetup{
     pdfborder={0 0 0},
}
\definecolor{unihd}{RGB}{153,0,0}

\newcommand{\simo}{Kai Uwe}
\newcommand{\protokoll}{Kai Uwe}
\newcommand{\sbegin}{XX:XX Uhr}
\newcommand{\sende}{XX:XX Uhr}
\newcommand{\datum}{XX.XX.XXXX}
\newcommand{\FSRPhysik}[2]{\def\FSRPhysikNamen{#1} \def\FSRPhysikBeschlussf{#2}}
\newcommand{\FSRMathe}[2]{\def\FSRMatheNamen{#1} \def\FSRMatheBeschlussf{#2}}
\newcommand{\FSRInfo}[2]{\def\FSRInfoNamen{#1} \def\FSRInfoBeschlussf{#2}}

\FSRInfo{}{}
\FSRMathe{}{}
\FSRPhysik{}{}

\newcommand{\Beschlussf}{%
Vom Fachschaftsrat Mathematik anwesend:\\ \FSRMatheNamen\\ \textbf{\FSRMatheBeschlussf}\\
Vom Fachschaftsrat Physik anwesend:\\ \FSRPhysikNamen\\ \textbf{\FSRPhysikBeschlussf}\\
Vom Fachschaftsrat Informatik anwesend:\\ \FSRInfoNamen\\ \textbf{\FSRInfoBeschlussf}
}
\author{}
\title{\vspace{-2em} Protokoll der gemeinsamen Sitzung der Fachschaften Mathe, Physik und Informatik (MathPhysInfo)}
\date{\vspace{-2em} \datum \vspace{-1em}}

\def\MathPhysSetLogo{
     \tikz [remember picture,overlay]
     \node [shift={(-46.15mm,-19.12mm)}]
          at (current page.north east)
               {\includegraphics{MathPhysLogo.pdf}};
     %\tikz [remember picture,overlay]
     %\node [shift={(-46.15mm,-19.12mm)}]
     %     at (current page.north east)
     %     [circle,fill,inner sep=1.5pt]{};
     \tikz [remember picture,overlay]
     \node [shift={(-59.71mm,19.12mm)}]
          at (current page.south east)
               {\textcolor{unihd}{\rule{0.859mm}{26.241mm}}};
     %\tikz [remember picture,overlay]
     %\node [shift={(-59.01mm,19.12mm)}]
     %     at (current page.south east)
     %     [circle,fill,inner sep=1.5pt]{};
}
\def\MathPhysSetFooter{
     \tikz [remember picture,overlay]
     \node [shift={(-85.21mm,19.12mm)}]
          at (current page.south east)
               {\parbox{4.4cm}{
                    \color{gray}
                    \sffamily
                    \scriptsize
                    \begin{flushright}
                    \Telefon\quad 06221\,54-14999\\
                    \FAX\quad 06221\,54-16114999\\
                    \Letter\quad \href{mailto:fachschaft@mathphys.info}{\color{gray}fachschaft@mathphys.info}\\
                    \href{http://mathphys.info}{\color{gray}http://mathphys.info}
                    \end{flushright}
               }};
     \tikz [remember picture,overlay]
     \node [shift={(-34.01mm,19.12mm)}]
          at (current page.south east)
               {\parbox{4.4cm}{
                    \color{gray}
                    \sffamily
                    \scriptsize
                    \begin{flushleft}
                    Fachschaft MathPhysInfo\\
                    Im Neuenheimer Feld 205\\
                    Raum 01.301\\
                    69120 Heidelberg
                    \end{flushleft}
               }};
     %\tikz [remember picture,overlay]
     %\node [shift={(-34.01mm,19.12mm)}]
     %     at (current page.south east)
     %     [circle,fill,inner sep=1.5pt]{};
}
\def\MathPhysSetFooterRight{
     \tikz [remember picture,overlay]
     \node [shift={(71.8mm,15.5mm)}]
          at (current page.south west)
               {\parbox{8cm}{\raggedright\begin{tiny} Gemeinsame Sitzung der Fachschaften Mathe, Physik und Informatik und der Fachschaftsräte Mathe, Physik und Informatik am \datum.\\
               Simo: \simo\ Protokoll: \protokoll\\
               FSR-Physik: \FSRPhysikNamen\ (\FSRPhysikBeschlussf)\\
               FSR-Mathe: \FSRMatheNamen\ (\FSRMatheBeschlussf)\\
               FSR-Info: \FSRInfoNamen\ (\FSRInfoBeschlussf)\\
                \end{tiny}}};
}
\def\MathPhysSetPageNumberRight{
     \tikz [remember picture,overlay]
     \node [shift={(-29.4mm,-42.98mm)}]
          at (current page.north east)
               {\parbox{4.4cm}{\textcolor{gray}{\raggedleft\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\def\MathPhysSetPageNumberLeft{
     \tikz [remember picture,overlay]
     \node [shift={(53.5mm,-42.98mm)}]
          at (current page.north west)
               {\parbox{4.4cm}{\textcolor{gray}{\raggedright\normalfont \rmfamily Seite \thepage\ von \pageref{LastPage}}}};
}
\rohead[\MathPhysSetLogo]{\MathPhysSetLogo \MathPhysSetPageNumberRight}
\ofoot[]{\MathPhysSetFooter\MathPhysSetFooterRight}
\lehead{\MathPhysSetPageNumberLeft}
\cfoot*{}

%enables headings on title page by redefining the maketitle with thispagestyle
%\let\oldmaketitle\maketitle
%\def\maketitle{\oldmaketitle\thispagestyle{scrheadings}}

\newcommand{\konsens}[1]{In der gemeinsamen Sitzung besteht \IfEqCase{#1}{%
        {1}{Konsens ohne Bedenken.}%
        {2}{Konsens mit leichten Bedenken.}%
        {3}{Konsens mit Enthaltung.}%
        {4}{Konsens mit Beiseitestehen.}%
        {5}{kein Konsens aufgrund schwerer Bedenken.}%
        {6}{kein Konsens aufgrund eines oder mehrerer Vetos.}%
        }[\PackageError{konsens}{Undefined option to Konsens (must be 1-6): #1}{}]%
.}%
\newcommand{\FSReinstimmig}{Abstimmungsergebnis der Fachschaftsräte: Einstimmig angenommen}

\newenvironment{antrag}{\begin{quote}\begin{itshape}}{\end{itshape}\end{quote}}

\newcommand{\Antrag}[3]{%
    \Antragstext{#1}
    \Begruendung{#2}
    \subsection*{Abstimmung}%
    #3\\%
}

\newcommand{\finanzantragstext}[3]{%
Die gemeinsame Sitzung beschließt bis zu #1 aus dem Posten #2 für #3
}

\newcommand{\maketitlepage}{
\maketitle
\begin{tabbing}
    \textbf{Sitzungsmoderation:}\quad\=\simo \\%
    \textbf{Protokoll:}\> \protokoll \\
    \textbf{Beginn:}\>\sbegin\\
    \textbf{Ende:}\>\sende\\ 
\end{tabbing}
\section{Begrüßung}
    Die Sitzungsmoderation begrüßt die anwesenden Mitglieder der Studienfachschaften Mathematik, Physik und Informatik und eröffnet so die Fachschaftsvollversammlung der Studienfachschaften Mathematik, Physik und Informatik.
\section{Feststellung der Beschlussfähigkeit}
\Beschlussf
}

\newcommand{\protokollbeschluss}[2]{
\subsection*{Beschluss des Protokolls vom #1}
\Antragstext{
 Die gemeinsame Sitzung beschließt die Annahme des Protokolls vom #1.
 }
 \konsens{#2}
}

\newcommand{\Antragstext}[1]{
\subsection*{Antragstext}
\begin{antrag}
#1%
\end{antrag}
}

\newcommand{\Begruendung}[1]{
\subsection*{Begründung}
#1%
}


\newcommand{\Tagesordnung}[1]{
\section{Feststellen der Tagesordnung}
%\tableofcontents
\begin{antrag}
    Die Tagesordnung wird in der vorliegenden Form angenommen.
\end{antrag}
\konsens{#1}
}

\newcommand{\nextsimo}[1]{
\section{Sitzungsmoderation für die nächste Sitzung}
    Die Sitzungsmoderation für die Fachschaftssitzung MathPhysInfo der nächsten Woche wird von #1 übernommen.
}

\renewcommand\thesection{TOP \arabic{section}:}
\renewcommand*\thesubsection{TOP \arabic{section}.\arabic{subsection}:}
\renewcommand\contentsname{Tagesordnung}


\setlength{\parindent}{0pt}
\setlength{\parskip}{1em}
