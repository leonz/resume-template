%        File: resume.cls
%      Author: Leon Zaruvinsky
%     License: MIT License
%     Created: Fri Sep 05 06:00 PM 2014 E
% Last Change: Fri Sep 06 12:23 AM 2014 E
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{resume}

\LoadClass{article}

\RequirePackage{titlesec}
\RequirePackage[margin=.5in]{geometry}
\RequirePackage{changepage}
\RequirePackage[pdfborder={0 0 0}]{hyperref}
\RequirePackage{fontspec}
\RequirePackage{fontawesome}

\newcommand{\name}[1]{
	{\Huge\raggedright\bfseries #1}
}
\newcommand{\info}[4]{
	\begin{figure}[h!]
	\begin{minipage}[b]{.3\linewidth}
	\bfseries {\large \faEnvelope} \hspace*{0em} {\large #1} \newline {\Large \faPhoneSquare} \hspace*{0em} {\large #2}
	\end{minipage}
	\hspace{.3\linewidth}
	\begin{minipage}[b]{.3\linewidth}
	\bfseries {\Large \faTwitterSquare} \hspace*{0em} {\large #3} \newline {\Large \faGithubSquare} \hspace*{0em} {\large #4}
	\end{minipage}
	\end{figure}
}

\titlespacing*{\subsection}
{0pt}{14pt plus 2pt minus 2pt}{0pt plus 2pt minus 2pt}

\titleformat{\section}
	{\Large\bfseries\raggedright}
	{}{0pt}
	{}

\titleformat{\subsection}
	{\large\bfseries\raggedright}
	{}{20pt}
	{}


\newcommand{\subsectiond}[2]{
	\subsection[#1]{#1 \hspace*{.5em} \textnormal{#2}}
}

\newcommand{\subsectionp}[3]{
	\subsection[#1]{#1 \hspace*{.5em} \textnormal{#2 \hfill #3}}
}

\newcommand{\desc}[1]{
	\begin{adjustwidth}{20pt}{}
	\large \raggedright #1
	\end{adjustwidth}
}
