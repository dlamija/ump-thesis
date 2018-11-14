%---------------------------------------------------------%
%			UMP Thesis : Latex Template					  %
%			By : Muhammed Ramiza bin Ramli				  %
%---------------------------------------------------------%
%						Class File						  %
%---------------------------------------------------------%

% Class File for Universiti Malaysia Pahang 
% Thesis Writing
% Following : 
% 1. 2017 (April) Thesis_Guidelines_V2.pdf
% - http://ips.ump.edu.my/images/FIELD%20OF%20RESEARCH/Thesis_Guidelines_V2.pdf
% - 2017/04/12 - No reference to this file from Main IPS Website 
% 2. 2016 (November) UMP Thesis Template v1.dotx
% - https://drive.google.com/drive/u/2/folders/0B99VRxsmhqOuTnVJbEhMak92cjA
% 3. 2016 (February) THESIS_GUIDEBOOK_2016.pdf
% - No longer available online
% 4. 2016 Verified Thesis Declaration form IPS.rar âˆ version 1
% - From 'UMP Postgraduate Association' FB Group
% - https://www.facebook.com/groups/806896349436074/permalink/882148958577479/
% - Note : Not Sure about this; Maybe not official
% - Preformated Form for:
%	i. Declaration of Thesis and Copyright
%  ii. Thesis Declaration Letter
% iii. Student Declaration Form
%  iv. Supervisor Declaration Form
%---------------------------------------------------------%
%	Muhammed Ramiza bin Ramli
%	v0.5 2016/8/13
%	v0.6 2017/4/12
%	[2017 Guide] 
%		- Remove No Page Number on First Page of Chapter
%		- Remove No Boldface on TOC reference (Page #)
%	v0.7 2017/8/01
%		- restructure class file for better reading
%
%---------------------------------------------------------%
%   [TODO] Fixed line spacing \singlespacing \onehalfspacing
%                \doublespacing 
%		   add a few pt to follow MS Word
%---------------------------------------------------------%


%---------------------------------------------------------%
%   Class file declaration [Start]
%---------------------------------------------------------%
\NeedsTeXFormat{LaTeX2e}
    \newcommand\@classname    {umpthesis}
    \newcommand\@umpfullname  {Universiti Malaysia Pahang}
    \newcommand\@classabout   {Class File for \@umpfullname Thesis Writing}
    \newcommand\@classdate    {2017/08/01}
    \newcommand\@classversion {v0.1}

\ProvidesClass{\@classname}[\@classdate\space\@classversion\space\@classabout]
%---------------------------------------------------------%
%	Class file declaration [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Class file Structure and Package Loading [Start]
%---------------------------------------------------------%
% [2.1] Paper Specification - a4Paper
% [2.2.1] Typeface or Font - 12pt\LoadClass[a4paper,oneside,12pt,onecolumn]{memoir}
% [2.2.1] Typeface or Font - Times New Roman 
% There is no actual Times New Roman font in native LaTeX, 
% the closest you'll get is by adding
\RequirePackage{mathptmx}				% TNR Typeface
% Page layout
% [2.5] Margins Specification
% All pages should be set with the same margin.  
% Students should maintain the margin specifications as 
% shown in Table 2.3.
\RequirePackage[a4paper]{geometry}		% Paper Format
\RequirePackage[hidelinks]{hyperref}	% Hyperlink Reference
\pdfstringdefDisableCommands{			% Fixed MakeUpperCase
	\let\MakeUppercase\relax
} 
%\let\appendix\relax
\RequirePackage{amssymb}				% Math Symbol
\DisemulatePackage{setspace} 			% fix spacing command
\RequirePackage{setspace}
\RequirePackage{parskip}				% Paragraph setting
\RequirePackage{graphicx}
\RequirePackage{tabularx}				% Creating Table
\RequirePackage{indentfirst}			% Paragraph indent
\RequirePackage{caption}				% Caption Spacing
\RequirePackage{enumitem}				% item List
\RequirePackage{fmtcount}				% Number to String
\RequirePackage{tocloft}				% Table of Content
\RequirePackage{datetime}
\pagestyle{plain}
%---------------------------------------------------------%
%	Class file Structure and Package Loading [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	String Definition [Start]
%---------------------------------------------------------%
\def\@author{\textbf{!MY FATHER'S SON}}
\def\@authorDOB{31/08/1957}
\def\@authorStudID{PHD007}
\def\@authorNRICPassport{000000-00-0000}

\def\@umpFaculty{Faculty of Computer Systems \& Software Engineering}
\def\@umpSession{2016/2017}
\def\@umpDegree{Doctor of Philosophy}
\def\@umpField{Computer Science}

\def\@titleWrapOne{First Line of Wrapped Title}
\def\@titleWrapTwo{Second Line of Wrapped Title}
\def\@titleWrapThree{Third Line of Wrapped Title}
\def\@svisorMain{Prof. Dr. Etc}
\def\@submitYear{2018}
\def\@submitMonth{NOVEMBER}

\newcommand{\authorDOB}[1]{\def\@authorDOB{#1}}
\newcommand{\authorStudID}[1]{\def\@authorStudID{#1}}
\newcommand{\authorNRICPassport}[1]{\def\@authorNRICPassport{#1}}
\newcommand{\umpFaculty}[1]{\def\@umpFaculty{#1}}
\newcommand{\umpSession}[1]{\def\@umpSession{#1}}
\newcommand{\umpDegree}[1]{\def\@umpDegree{#1}}
\newcommand{\umpField}[1]{\def\@umpField{#1}} 
\newcommand{\titleWrapOne}[1]{\def\@titleWrapOne{#1}}
\newcommand{\titleWrapTwo}[1]{\def\@titleWrapTwo{#1}}
\newcommand{\titleWrapThree}[1]{\def\@titleWrapThree{#1}}
\newcommand{\svisorMain}[1]{\def\@svisorMain{#1}}
\newcommand{\svisorMainPos}[1]{\def\@svisorMainPos{#1}}
\newcommand{\svisorSecond}[1]{\def\@svisorSecond{#1}}
\newcommand{\svisorSecondPos}[1]{\def\@svisorSecondPos{#1}}
\newcommand{\submitYear}[1]{\def\@submitYear{#1}}
\newcommand{\submitMonth}[1]{\def\@submitMonth{#1}}
%---------------------------------------------------------%
%	String Definition [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Front Matter [Start]
%---------------------------------------------------------%
%	Formatting for the FRONT MATTER / PRILIMINARIES
% - chapter headings
% - page numbering : 
%   [2.7] Numbering System
%   in lowercase Roman numerals, such as i, ii, and iii.
% - bookmarks
%---------------------------------------------------------%
\patchcommand{\frontmatter}{
	%\renewcommand{\cftchapterafterpnum}{}
	\setlength{\cftbeforesectionskip}{5em}
	% Spacing between section
	\setlength{\cftbeforechapterskip}{0.2em} 
 	}{
	\phantomsection
}
%---------------------------------------------------------%
%	Front Matter [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Main Matter [Start]
%---------------------------------------------------------%
%	Formatting for the MAIN MATTER 
% - spacing
% - chapter headings
% - page numbering : 
%   [2.7] Numbering System
%   consecutive Arabic numerals, such as 1, 2, and 3.
%  - paragraph
%   [2.2.4] Paragraph
%   All paragraphs should have the first line indented 12.7 mm from the left margin
%---------------------------------------------------------%
\preto{\mainmatter}{\addtocontents{toc}{\protect\addvspace{5pt}}}

\patchcommand{\mainmatter}{
	\cftinserthook{toc}{ChapterTOC}
	\setlength{\parindent}{0.5in} % 12.7mm
	\setlength{\parskip}{1em}	% Space between Chapter-Section
	\linespread{1.435}
		%\parskip=\@twolinespacing \advance\parskip by 0pt plus 2pt
	}{%
}
\cftinsertcode{ChapterTOC}{
	% remove page number for chapter
	\renewcommand*{\cftchapterformatpnum}[1]{}
	\renewcommand{\cftchapterafterpnum}{}
  %\setlength{\cftbeforesectionskip}{60pt}
  \setlength{\cftbeforechapterskip}{1em}
  \setlength{\cftbeforesectionskip}{\cftbeforechapterskip}
}
%---------------------------------------------------------%
%	Front Matter  [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Make a Cover Page [Start]
%---------------------------------------------------------%
% [2.4.1]  Front Cover
% - should be written in CAPITAL LETTERS
% - using Times New Roman 18
% 	i. Title of the Thesis (50 mm from the upper edge of 
%.     the cover);%  ii. Full Name of the Student (as in identity card for 
%.     Malaysian and passport for non- Malaysian);% iii. Name of the Degree (e.g., DOCTOR OF PHILOSOPHY); and%  iv. Name of the University (UNIVERSITI MALAYSIA PAHANG, 
%.     50 mm from the bottom edge of the cover).
% APPENDIX A 
% - CAPITAL LETTERS
% - 50 mm top
% - 50 mm bottom
% - same amount (x) between title and author, author and degree
% - no info about spacing between name of degree and University Name
% UMP Thesis Template v1.dotx
% - Times New Roman 20
% - CAPITAL LETTER on TITLE, AUTHOR, and UNIVERSITI
% - Title Case on Degree's Name
% - Single spacing + 6pt after
% - 1 blank line between name of degree and University Name
%---------------------------------------------------------%
\newcommand{\umpCoverPage}{%
	\newgeometry{top=50mm,bottom=50mm,	
			left=35mm,right=25mm}
	\begingroup%
		\thispagestyle{empty}
		\fontsize{18pt}{24pt}\selectfont\centering%
		\MakeUppercase{\@title}\par%
		\vfill%
		\MakeUppercase{\@author}\par%
		\vfill%
		\MakeUppercase{\@umpDegree}\par%
		\vspace*{1.5\baselineskip}
		\MakeUppercase{\@umpfullname}\par%
	\endgroup%
	\restoregeometry
}
%---------------------------------------------------------%
%	Make a Cover Page [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
% 	PreRequisite for UMP Copyright Declaration [Start]
%---------------------------------------------------------%
% [3.2.1] Declaration 
% (1) Declaration of Thesis and Copyright
% APPENDIX C
%	- Double line Suqare Box
%---------------------------------------------------------%
\RequirePackage{tikz}
	\usetikzlibrary{calc}
	\usetikzlibrary{backgrounds}
\RequirePackage{calc}
	\newlength{\remaining}
	\newcommand{\titleline}[1]{%
	\setlength{\remaining}{270pt-\widthof{#1}}
	%\setlength{\remaining}{290pt-\widthof{\textsc{#1}}}
	\noindent\underline{#1\hspace*{\remaining}}\par}
	%\noindent\underline{\textsc{#1}\hspace*{\remaining}}\par}
%---------------------------------------------------------%
% 	PreRequisite for UMP Copyright Declaration [End]
%---------------------------------------------------------%

%---------------------------------------------------------%
% 	UMP Copyright Declaration [Start]
%---------------------------------------------------------%
% [3.2.1] Declaration 
% (1) Declaration of Thesis and Copyright
% - 25 mm from the upper edge of the page.
% APPENDIX C
% -
% UMP Thesis Template v1.dotx
% - Times New Roman 11
% 2016 Verified Thesis Declaration form
% - Times New Roman 12
%---------------------------------------------------------%
\newcommand{\umpCopyright}[3]{%
	%{1.CONFIDENTIAL,2.RESTRICTED,3.OPEN ACCESS}
	\thispagestyle{empty}
	\begin{center}
  		\bfseries \MakeUppercase{\@umpfullname} \vspace{-.5em}\vspace{0pt}
  		\vspace*{2\baselineskip}
  	\end{center}
   	\begingroup
  		\linespread{1}\selectfont
  		%\addcontentsline{toc}{chapter}{\MakeUppercase{Thesis Confidential Status}}
		\ifnum #1=1\def\@ctick{$\checkmark$}
		\else\def\@ctick{}
		\fi
		\ifnum #2=1\def\@rtick{$\checkmark$}
		\else\def\@rtick{}
		\fi
		\ifnum #3=1\def\@oatick{$\checkmark$}
		\else\def\@oatick{}
		\fi

		% create frame 
		% Page layout
		% [2.5]  Margin Specifications
		% [Table 2.3]		
		%	Top edge   	25 mm 
		%	Right side  25 mm  
		%	Left side   35 mm 
		%	Bottom edge 25 mm
		\begin{tikzpicture}[overlay,remember picture]
			% outer rectangle
			\draw [line width=3pt,rounded corners=0pt,]
			($(current page.north west) + (3.6cm,-4.cm)$) rectangle
		    ($ (current page.south east) + (-2.6cm,4.5cm) $); 
		    % inner rectangle
			\draw [line width=1pt,rounded corners=0pt,]
			($ (current page.north west) + (3.5cm,-3.9cm) $)
			rectangle
		    ($ (current page.south east) + (-2.5cm,4.4cm) $);      
		\end{tikzpicture}
		
		\fontsize{11pt}{11pt}\selectfont
		\textbf{DECLARATION OF THESIS AND COPYRIGHT}\\
		
		\begingroup
			\def\arraystretch{2}%
			\noindent\begin{tabularx}{\textwidth}{llll}
				& Author's full name & : & \titleline{\textbf{\@author}} \\[1ex]
				& Date of birth      & : & \titleline{\textbf{\@authorDOB}} \\[1ex]
				& Title              & : & \titleline{\textbf{\@titleWrapOne}} \\[1ex]
				&                    &   & \titleline{\textbf{\@titleWrapTwo}} \\[1ex]
				&                    &   & \titleline{\textbf{\@titleWrapThree}} \\[1ex]
				& Academic Session   & : & \titleline{\textbf{\@umpSession}} \\
	 		\end{tabularx}
		\endgroup
		 		
		\vspace*{2\baselineskip}
		I declare that this thesis is classified as:\\
		
		\noindent\begin{tabularx}{\textwidth}{lcclll}
						\cline{3-3}
			& \multicolumn{1}{l|}{} & \multicolumn{1}{m{0.1cm}|}{\@ctick}	& CONFIDENTIAL	&& (Contains confidential information under the Official\\ \cline{3-3}
			&&  				&				&&  Secret Act 1997)*        \\[1ex] \cline{3-3}
			& \multicolumn{1}{l|}{} & \multicolumn{1}{m{0.1cm}|}{\@rtick}	& RESTRICTED	&& (Contains restricted information as specified by the\\ \cline{3-3}
			&&  				& 				&& organization where research was done)*  \\[1ex] \cline{3-3}
			& \multicolumn{1}{l|}{} & \multicolumn{1}{m{0.1cm}|}{\@oatick} & OPEN ACCESS  && I agree that my thesis to be published as online open access\\ \cline{3-3}
			&& & && (Full text)\\                                                 
		\end{tabularx}
		
		\vspace*{2\baselineskip}		
		I acknowledge that Universiti Malaysia Pahang reserve the right as follows:\\
		
		\begingroup
			\renewcommand{\arraystretch}{0.5}%
			\noindent\begin{tabular}{lll}
					& 1. & The Thesis is the Property of University Malaysia Pahang                                                                 \\[1ex]
					& 2. & The Library of University Malaysia Pahang has the right to make copies \\ [1ex]
					& & for the purpose of research only. \\[1ex]
					& 3. & The Library has the right to make copies of the thesis for academic exchange.\\[1ex]                                           
			\end{tabular}\\
		\endgroup\\
		
		\vspace*{1\baselineskip}
		Certified By:\\
		
		\vspace*{3\baselineskip}
		\renewcommand{\arraystretch}{}%
		\noindent\begin{tabularx}{\textwidth}{lp{\dimexpr.40\textwidth}p{\dimexpr.08\textwidth}p{\dimexpr.40\textwidth}}
				& \underline{\hspace*{\dimexpr.40\textwidth}} &  & \underline{\hspace*{\dimexpr.40\textwidth}}\\[1ex]
 				& \multicolumn{1}{c}{(Student's Signature)} &  & \multicolumn{1}{c}{(Signature of Supervisor)} \\[4ex]
 				& \multicolumn{1}{c}{\textbf{\@authorNRICPassport}} &  & \multicolumn{1}{c}{\textbf{\@svisorMain}} \\[-2ex]
 				& \underline{\hspace*{\dimexpr.40\textwidth}} &  & \underline{\hspace*{\dimexpr.40\textwidth}}\\[1ex]
 				& New IC / Passport Number &  & Name of Supervisor \\[1ex]
 				& Date : &  & Date : \\ 
 		\end{tabularx}
		\vspace*{\baselineskip}
		
		%% Note : Did we need to print this Note in this form?
		%% or just a reminder to the writer!
		
		% 2016 February Guide
		%\footnotesize \noindent NOTE : * If the thesis is CONFIDENTIAL or RESTRICTED, please attach with the letter page 2 from the organization with the period and reasons for confidentiality or restriction.
		
		% 2016 November Guide
		%\footnotesize NOTE : * If the thesis is CONFIDENTIAL or RESTRICTED, please attach a thesis declaration letter.
		
		% 2017 Guide : Center
		\begin{center}
			\footnotesize \noindent NOTE : * If the thesis is CONFIDENTIAL or RESTRICTED, please attach with the letter page 2 from the organization with the period and reasons for confidentiality or restriction.
		\end{center}		
	\endgroup
	\clearpage	
}
%---------------------------------------------------------%
% 	UMP Copyright Declaration [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
% 	Thesis Declaration Letter [Start]
%---------------------------------------------------------%
% [3.2.1] (1) Declaration of Thesis and Copyright
% (accompanied by Thesis Declaration Letter, if required)
% APPENDIX C
% - No Bold, No Itallic
% UMP Thesis Template v1.dotx
% - Times New Roman 11
% - Itallic on  "Perpustakaan Universiti Malaysia Pahang"
% - No Footleter Note
% 2016 Verified Thesis Declaration form
% - Times New Roman 12
% - BOLD on "CLASSIFICATION OF THESIS AS RESTRICTED"% - With Footletter Note
%---------------------------------------------------------%
\newcommand{\umpLibLetter}[5]{%
	\thispagestyle{empty}
	\begingroup
		%\setlength\parindent{0pt}
		\begin{center}
 			\bfseries \MakeUppercase{Thesis Declaration Letter} \vspace{-.5em}\vspace{0pt}
 			\vspace*{2\baselineskip}
 		\end{center}
 		\fontsize{11pt}{11pt}\selectfont
 		
	 	\noindent Librarian,\\
	 	% 2016 February : Itallic
	 	%\textit{Perpustakaan \@umpfullname},\\
	 	% 2017 April : No Itallic
	 	Perpustakaan \@umpfullname,\\
	 	\@umpfullname,\\
	 	Lebuhraya Tun Razak,\\
	 	26300, Gambang, Kuantan.\\
	 	
	 	
	 	\noindent Sir,\\
	 	
	 	% 2016 February : Boldface
	 	%\noindent \textbf{CLASSIFICATION OF THESIS AS #1}\\
	 	
	 	%2016 November & 2017 April : No Boldface
	 	\noindent CLASSIFICATION OF THESIS AS #1\\

	 	
	 	\noindent Please be informed that the following thesis is classified as #1 for a period of \numberstringnum{#2} (#2) years from the date of this letter.  The reasons for this classification are as listed below.\\
	 	\\
	 	%\renewcommand{\arraystretch}{1.0}%
		\begin{tabular}{llrl}
			 & Author's name     & : & \@author    \\
			 & Thesis Title      & : & \@titleWrapOne     \\
			 & 			         &   & \@titleWrapTwo     \\
			 & 			         &   & \@titleWrapThree   \\
			\multicolumn{4}{l}{} 				  \\
			 & Reasons           &  (i)&  #3	  \\ \\
			 &					 &	(ii)&  #4	  \\ \\
			 &					 &	(iii)&  #5	  \\	    
		\end{tabular}
		\vspace*{5\baselineskip}
		
		\noindent Thank you.\\
		
		\noindent Sincerely yours,\\
		
		\vspace*{5\baselineskip}
		\renewcommand{\arraystretch}{1.0}%
		\noindent\begin{tabular}{c}
    		\underline{\hspace*{160pt}}\\ 
    		(Supervisor's Signature)\\
    	\end{tabular}
		
		\vspace*{1\baselineskip}
		\noindent Date	 :\\
		\\
		Stamp:\\		\vfill
		% 2016 November : Itallic
		%\noindent Note: This letter should be written by the supervisor, addressed to the Librarian,\\ \textit{Perpustakaan \@umpfullname\} with its copy attached to the thesis.
		
		% 2016 February & 2017 April : No Itallic
		\noindent Note: This letter should be written by the supervisor, addressed to the Librarian,\\ Perpustakaan \@umpfullname\ with its copy attached to the thesis.
		
 	\endgroup
 	\clearpage
}
%---------------------------------------------------------%
% 	Thesis Declaration Letter [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
% 	Supervisor's Declaration [Start]
%---------------------------------------------------------%
% [3.2.1] (2) Supervisor's Declaration
% - 
% APPENDIX C
% - Uppercase, No Bold on SV Infos
% UMP Thesis Template v1.dotx
% - 1.5 line spacing for the texts.
% - UMP LOGO : Height 2.11cm x Width 4.14cm
% 2016 Verified Thesis Declaration form
% - UMP LOGO : Height 2.65cm x Width 5.19cm
%---------------------------------------------------------%
\newcommand{\umpSvDeclaration}{%
	\phantomsection
	\label{pre:declarationsv}
	\thispagestyle{empty}
	\cftaddtitleline{toc}{chapter}{\MakeUppercase{Declaration}}{}
	\begin{center}
		\includegraphics[width=4.14cm]{logo-ump-color}\\
		\vspace*{1.5\baselineskip}
		\bfseries \MakeUppercase{Supervisor's Declaration} \vspace{-1.3em}
		\vspace*{1.5\baselineskip}
	\end{center}
	
	\onehalfspacing
	\@ifundefined{@svisorSecond}{%
		\noindent I hereby declare that I have checked this thesis and in my opinion, this thesis is adequate in terms of scope and quality for the award of the degree of \@umpDegree\ in \@umpField.
		}{%
    	\noindent We hereby declare that We have checked this thesis and in our opinion, this thesis is adequate in terms of scope and quality for the award of the degree of \@umpDegree\ in \@umpField.
        }%
    \vspace*{3\baselineskip}\\
    \noindent\begin{tabular}{c}
    	\underline{\hspace*{160pt}}\\ 
    	(Supervisor's Signature)\\
    \end{tabular}\\
    \noindent\begin{tabular}{l p{0.4in} @{:} p{0.3in} l}
    	Full Name 	& & & \MakeUppercase{\@svisorMain} \\ 
    	%\cline{4-4}
    	Position	& & &	\MakeUppercase{\@svisorMainPos} \\ 
    	%\cline{4-4}
    	Date 		& & & \\ 
    	%\cline{4-4}
    \end{tabular}
    \@ifundefined{@svisorSecond}{%
    	%
    }{%
    	\vspace*{3\baselineskip}\\    	
    	\noindent\begin{tabular}{c}
    		\underline{\hspace*{160pt}}\\
    		(Co-Supervisor's Signature) \\
    	\end{tabular}\\    	
    	\noindent\begin{tabular}{l p{0.4in} @{:} p{0.3in} l}
    		Full Name	& & & \MakeUppercase{\@svisorSecond} \\ 
    		%\cline{4-4}
    		Position	& & &	\MakeUppercase{\@svisorSecondPos}\\
    		%\cline{4-4}
    		Date		& & & \\ 
    		%\cline{4-4}
       	\end{tabular}
    }%
    \vspace{\fill}
    \clearpage
}
%---------------------------------------------------------%
% 	Supervisor's Declaration [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
% 	Student's Declaration [Start]
%---------------------------------------------------------%
% [3.2.1] (3) Student's Declaration.
% - 
% APPENDIX C
% - Uppercase, No Bold on Author's Infos
% UMP Thesis Template v1.dotx
% - 1.5 line spacing for the texts.
% - UMP LOGO : Height 2.11cm x Width 4.14cm
% 2016 Verified Thesis Declaration form
% - UMP LOGO : Height 2.65cm x Width 5.19cm
%---------------------------------------------------------%
\newcommand{\umpStudDeclaration}{%
	\phantomsection 
	\thispagestyle{empty}
	\label{pre:declarationstd}
	%\addcontentsline{toc}{chapter}{\MakeUppercase{Student's Declaration}}
	\begin{center}
		\includegraphics[width=4.14cm]{logo-ump-color}\\
		\vspace*{1.5\baselineskip}
 		\bfseries \MakeUppercase{Student's Declaration} \vspace{-1.3em}
		\vspace*{1.5\baselineskip}
 	\end{center}
 	
 	\onehalfspacing
 	\noindent I hereby declare that the work in this thesis is based on my original work except for quotations and citation which have been duly acknowledged. I also declare that it has not been previously or concurrently submitted for any other degree at \@umpfullname\  or any other institutions.
 	\vspace*{3\baselineskip}
 	
 	\noindent\begin{tabular}{c}
 		\underline{\hspace*{160pt}}\\ 
 		(Author's Signature) \\
 	\end{tabular}\\ 	
 	\noindent\begin{tabular}{l p{0.4in} @{:} p{0.3in} l}
 		Full Name	& & & \MakeUppercase{\@author} \\ %\cline{4-4}
 		ID Number	& & &	\@authorStudID \\ %\cline{4-4}
 		Date			& & &  \\ %\cline{4-4}
 	\end{tabular}
 	\vspace{\fill}
 	\clearpage
}
%---------------------------------------------------------%
% 	Student's Declaration [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Title Page [Start]
%---------------------------------------------------------%
% [3.2.2] Title Page: 
% - The title page should use single spacing and CAPITAL LETTERS
% i. Title of the Thesis (exactly the same as it appears on the front cover, 50 mm from the upper edge of the page);
% APPENDIX D
% - Shown as a Single line spacing; not stated anywhere in the guide
% - TITLE, STUDENT'S NAME: CAPITAL LETTER
% - Purpose : Sentence Case
% - Faculty : Title Case
% UMP Thesis Template v1.dotx
% - Single line spacing; + 6pt before and after
% [TODO] Select only one Spacing
% [TODO] Fixed Uppercase on Month Name
%---------------------------------------------------------%
\renewcommand{\maketitle}{%
	\label{pre:titlepage}
	\addcontentsline{toc}{chapter}{\MakeUppercase{Title Page}}
	% [3.2.2] i. Title of the Thesis (exactly the same as it appears on the front cover, 50 mm from the upper edge of the page);
	\newgeometry{top=50mm,bottom=50mm,
			left=35mm,right=25mm}
	\begingroup 
		%\cftaddtitleline{toc}{chapter}{\MakeUppercase{\titlename}}{\thepage}	
		\thispagestyle{empty}%
		\fontsize{12pt}{20pt}\selectfont\centering%
		% [TOSELECT]
		% [2017 Guide]
		%\singlespacing
		% [UMP Thesis Templates]
		\onehalfspacing
		\MakeUppercase{\@title}\par%
		\vfill%
		\MakeUppercase{\@author}\par%
		\vfill%
		Thesis submitted in fulfilment of the requirements 
		\\for the award of the degree of\\%
		\@umpDegree\ \par%
		\vfill%
		\@umpFaculty\par%
		\MakeUppercase{\@umpfullname}\par
		\vfill
		% TODO - Fixed Month Case
		\MakeUppercase{\@submitMonth} \ \@submitYear\par%
	\endgroup
	\restoregeometry
	\clearpage
}
%---------------------------------------------------------%
%	Title Page [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Dedication [Start]
%---------------------------------------------------------%
% [3.2.3] Dedication (Optional)
% - It should be placed in the middle of the page.
% APPENDIX F
%---------------------------------------------------------%
\newenvironment{dedication}{%
	\phantomsection
	\addcontentsline{toc}{chapter}{\MakeUppercase{Dedication}}
	\label{pre:dedication}
	\begingroup
		\singlespacing
		\topskip0pt
		\vspace*{\fill}
		\begin{center}
	}{%
		\end{center}
		\vspace*{\fill}
	\endgroup
	%\restoregeometry
	\clearpage
}
%---------------------------------------------------------%
%	Dedication [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Acknowledgements [Start]
%---------------------------------------------------------%
% [3.2.4] Acknowledgements
% - Title : 25 mm from the upper edge of the page
% - Texts : Single line spacing within one page
% APPENDIX G
% - Title : 1 x Enter of 1.5 Line Spacing Between Title and Texts
% - Texts : No indent
% 			Single line spacing
% - Paragraph : 1 X Enter of Single line Spacing Between Paragraph
%				Shown big gap <- not single line spacing
% UMP Thesis Template v1.dotx
% - Title : [TITLE AT ROMAN PAGES]
%           1.15 line spacing with 24pt after spacing
% - Texts : [Abstract Font] 
%			Single line spacing; After Texts 18pt
% [TODO] Select only one Paragraph Skip (Single line/+18pt)
%---------------------------------------------------------%
\newenvironment{acknowledge}{%
	\label{pre:acknowledge}
	\addcontentsline{toc}{chapter}{\MakeUppercase{Acknowledgements}}
	\begin{center}
			\bfseries ACKNOWLEDGEMENTS\vspace{-3.3em}
			\vspace*{1\baselineskip}
	\end{center}		
	\begingroup
		\singlespacing 
		\setlength{\parindent}{0pt}
		\setlength{\parskip}{18pt}
	}{%
		\par\bigskip%
	\endgroup%
	\clearpage
}
%---------------------------------------------------------%
%	Acknowledgements [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Abstrak and Abstract [Start]
%---------------------------------------------------------%
% [3.2.5] Abstrak and Abstract
% - Title :25 mm from the upper edge of the page
% - Texts : a single paragraph, 
% 			in one page only, 
% 			with single line spacing
% APPENDIX H
% - Title : 1 x Enter of 1.5 Line Spacing Between Title and Texts
% - Texts : Single line spacing
% UMP Thesis Template v1.dotx
% - Title : [TITLE AT ROMAN PAGES]
%           1.15 line spacing with 24pt after spacing
% - Texts : [Abstract Font] 
%			Single line spacing; After Texts 18pt
%---------------------------------------------------------%
\newenvironment{abstrak}{%
	\label{pre:abstrak}
	\addcontentsline{toc}{chapter}{ABSTRAK}
	\begingroup
		\begin{center}
			\bfseries ABSTRAK\vspace{-1.3em}
			\vspace*{1\baselineskip} 
		\end{center}
		\singlespacing
}{%
		\par\bigskip%
	\endgroup%
	\clearpage
} 

\renewenvironment{abstract}{%
	\label{pre:abstract}
	\addcontentsline{toc}{chapter}{\MakeUppercase{Abstract}}
	\begingroup%\SingleSpacing
		\begin{center}
			\bfseries \MakeUppercase{Abstract}\vspace{-1.3em}
			\vspace*{1\baselineskip}
		\end{center}
		\singlespacing
		%\setstretch{1.5} %some use 1.5 line spacing
	}{%	
		\par\bigskip%
	\endgroup%
	\clearpage
}  
%---------------------------------------------------------%
%	Abstrak and Abstract [Start]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Table of Content [Start]
%---------------------------------------------------------%
% [3.2.6] Table of Contents
% - 25 mm from the upper edge of the page
% - It consists of an ordered list of headings for 
%   the chapters,
% -  topics, 
% - subtopics, 
% - list of references, 
% - and appendices (if any)
% [Table 3.5]
% - The title for Level 4 is not included in Table of 
%   Contents.
% APPENDIX J
% - 1 x Enter of 1.5 Line Spacing Between Title and Texts
%---------------------------------------------------------%

\renewcommand{\contentsname}{TABLE OF CONTENTS}
\addtocontents{toc}{~\hfill\textbf{Page}\par}
% [2016 Guide] No Bold on Page number on TOC
\renewcommand*{\cftchapterformatpnum}[1]{\mdseries\normalsize #1}
% [2017 Guide] Remove no Bold on Page Number on TOC

% Chapter in TOC start in New Page if it is the last entry
\renewcommand{\cftchapterbreak}{\addpenalty{-4000}}

%remove dotted line on All Level : Section, SubSection, SubSubSection
\renewcommand\@dotsep{10000}
\renewcommand{\cftdotsep}{\cftnodots}
\addtocontents{toc}{\protect\sloppy}
% [2016 Guide]
% - Chapter BOLD without Page Number
%\cftpagenumbersoff{chapter} 
% - Up to level 4
%\settocdepth{subsubsection}	%during writing
% [2017 Guide] Up to Level 3
\settocdepth{subsection}

\renewcommand\tableofcontents{%
%	\label{pre:toc}
	\addcontentsline{toc}{chapter}{\MakeUppercase{\contentsname}}
	\begin{center}
		\bfseries \MakeUppercase{\contentsname}\vspace{-1.3em}
    	\vspace*{2\baselineskip}
    \end{center}
    \@mkboth{\MakeUppercase\contentsname}{\MakeUppercase\contentsname}%
    \linespread{1.3}\selectfont 
    \@starttoc{toc}%
    \clearpage
}
%
% Make Chapter name prefix by word Chapter
\renewcommand*{\cftchaptername}{\MakeTextUppercase{\chaptername}\space}
% Make Chapter name appear in CAPITAL LETTER
\renewcommand*{\l@chapter}[2]{%
	\l@chapapp{\uppercase{#1}}{#2}{\cftchaptername}}
%% Align Section same indent with Chapter #
\renewcommand*\l@section{\@dottedtocline{1}{0em}{0.5in}} 
%% Align SubSection same indent with Section Name
\renewcommand*\l@subsection{\@dottedtocline{2}{0.5in}{0.5in}} 
%% Align SubSection same indent with SubSection Name
\renewcommand*\l@subsubsection{\@dottedtocline{3}{1.0in}{0.6in}} 
%---------------------------------------------------------%
%	Table of Content [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	List of Tables [Start]
%---------------------------------------------------------%
\addtocontents{lot}{\noindent\textbf{Table}~\hfill\textbf{Title}~\hfill\textbf{Page}\par}

\renewcommand{\listoftables}{
	\label{pre:lot}
	\addcontentsline{toc}{chapter}{\MakeUppercase{\listtablename}}
	\begin{center}
		\bfseries \MakeUppercase{\listtablename}\vspace{-.5em}\vspace{0pt}
    	\vspace*{2\baselineskip}
    \end{center}
   	\@mkboth{\MakeUppercase\listtablename}{\MakeUppercase\listtablename}%
 	\@starttoc{lot}
 	\clearpage
}
%---------------------------------------------------------%
%	List of Tables [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	List of Figures [Start]
%---------------------------------------------------------%
\addtocontents{lof}{\noindent\textbf{Figure}~\hfill\textbf{Title}~\hfill\textbf{Page}\par}
\renewcommand{\listoffigures}{
	\label{pre:lot}
	\linespread{1.3}\selectfont 
	\addcontentsline{toc}{chapter}{\MakeUppercase{\listfigurename}}
	\begin{center}
		\bfseries \MakeUppercase{\listfigurename}\vspace{-.5em}\vspace{0pt}
    	\vspace*{2\baselineskip}
    \end{center}
   	\@mkboth{\MakeUppercase\listfigurename}{\MakeUppercase\listfigurename}%
 	\@starttoc{lof}
 	%\clearpage
}
%---------------------------------------------------------%
%	List of Figures [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
%	Chapter [Start]
%---------------------------------------------------------%
%	Chapter Heading
%---------------------------------------------------------%
\setlength\afterchapskip{\onelineskip}
\setlength\midchapskip{4\onelineskip}
\renewcommand*\chapnamefont{\bfseries}
\renewcommand*\chapnumfont{\bfseries\centering}
\renewcommand*\chaptitlefont{\bfseries\centering}
\renewcommand{\printchaptername}{{\chapnamefont\MakeUppercase{\chaptername}}}
\renewcommand*{\afterchapternum}{\vskip\midchapskip}
\renewcommand*{\printchaptertitle}[1]{\chaptitlefont\MakeTextUppercase{#1}}

% [2016 Guide] No page number on first page of the Chapter
\aliaspagestyle{chapter}{empty}
% [2017 Guide] Remove No page number on first page of the Chapter
%---------------------------------------------------------%
% Section headings
%---------------------------------------------------------%
\setsecnumdepth{paragraph}
%\setlength{\parskip}{0.3in}
% Section
\setsecheadstyle{\SingleSpacing\raggedright\sloppy\normalsize\bfseries}
\setbeforesecskip{\onelineskip}
\setaftersecskip{\onelineskip}

% SubSection
\setsubsecheadstyle{\SingleSpacing\raggedright\sloppy\normalsize\bfseries}
\setbeforesubsecskip{\onelineskip}
\setaftersubsecskip{\onelineskip}

% SubSubSection
\setsubsubsecheadstyle{\SingleSpacing\normalsize\bfseries}
\setbeforesubsubsecskip{\onelineskip}

\renewcommand{\theparagraph}{\roman{paragraph}.}
\setparaheadstyle{\normalsize\bfseries}
\setbeforeparaskip{\onelineskip}
\setafterparaskip{1.5ex plus .2ex}
\widowpenalty10000
\clubpenalty10000

% Setting Section Title Indent
\makeatletter
\def\@seccntformat#1{\protect\makebox[0.5in][l]{\csname
the#1\endcsname\quad}}
\makeatother


%---------------------------------------------------------%
% Chapter [End]
%---------------------------------------------------------%


%---------------------------------------------------------%
% Itemize list Roman (i) [Start]
%---------------------------------------------------------%
\newenvironment{enumlist}{
	\begin{enumerate}[label=(\roman*),align=right]
	    	\setlength{\itemsep}{0pt}
  		\setlength{\parskip}{0pt}
		\setlength{\labelwidth}{1.5cm}
		\setlength{\labelindent}{10pt}
		\setlength{\leftmargin}{1.25cm}
		%\setlength{\itemindent}{0.35cm}
  		\vspace{-5mm}
    }{
    \end{enumerate}
}
%---------------------------------------------------------%
% Itemize list Roman (i) [End]
%---------------------------------------------------------%

%---------------------------------------------------------%
% Caption for Figure and Table [Start]
%---------------------------------------------------------%
\DeclareCaptionLabelFormat{umpCaption}{#1~#2\hspace{4.5ex}}
\captionsetup{labelformat = umpCaption,
			  labelsep = none,
			  justification   = raggedright,
              singlelinecheck = false
              }
%---------------------------------------------------------%
% Caption for Figure and Table [Start]
%---------------------------------------------------------%



