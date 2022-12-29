%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Name:        SCU Thesis
%% Description: LaTeX thesis class for Shahid Chamran University of Ahvaz
%% Package URL: https://github.com/hanifbirgani/scu-thesis-latex
%% Version:     1.0.0
%% Author:      Hanif Taghipour Birgani
%% Author URL:  https://HanifBirgani.com
%% License:     LPPL Version 1.3c
%% 
%% Changelog:
%% [1.0.0] - 2022-12-23
%% - Fix README
%% - Change directory structure
%%
%% [0.0.3] - 2020-05-31
%% - Fixed \eqref extra parentheses
%% - Added README.md
%%
%% [0.0.2] - 2020-05-30
%% - Changed default image path
%% - Added user_packages.tex
%% - Fixed page margins for initial pages (one sided)
%%
%% [0.0.1] - 2020-05-29
%% - Initial release
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{scu-thesis}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[a4paper, 10pt, openany, oneside]{book}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Define Variables %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% عنوان دانشگاه
\def\universityTitle#1{\def\printUniversityTitle{#1}}
% نام دانشگاه
\def\universityName#1{\def\printUniversityName{#1}}
% لینک دانشگاه - اختیاری
\def\universityLink#1{\def\printUniversityLink{#1}}
% نام دانشکده
\def\faculty#1{\def\printFaculty{#1}}
% لینک دانشکده - اختیاری
\def\facultyLink#1{\def\printFacultyLink{#1}}
% گروه تحصیلی
\def\departement#1{\def\printDepartement{#1}}
% لینک گروه تحصیلی - اختیاری
\def\departementLink#1{\def\printDepartementLink{#1}}
% مقطع تحصیلی
\def\degreeType#1{\def\printDegreeType{#1}}
% رشته
\def\major#1{\def\printMajor{#1}}
% نوع سند - پایان‌نامه / رساله
\def\reportType#1{\def\printReportType{#1}}
% گرایش
\def\field#1{\def\printField{#1}}
% عنوان پایان‌نامه
\def\reportTitle#1{\def\printReportTitle{#1}}
% شماره پایان‌نامه
\def\thesisID#1{\def\printThesisID{#1}}
% آقای / خانم
\def\authorTitle#1{\def\printAuthorTitle{#1}}
% نام کوچک دانشجو
\def\authorFirstname#1{\def\printAuthorFirstname{#1}}
% نام خانوادگی دانشجو
\def\authorLastname#1{\def\printAuthorLastname{#1}}
% شماره دانشجویی
\def\studentID#1{\def\printStudentID{#1}}
% لینک دانشجو - اختیاری
\def\authorLink#1{\def\printAuthorLink{#1}}
% درجه ارزیابی پایان‌نامه
\def\evaluationRate#1{\def\printEvaluationRate{#1}}
% تاریخ دفاع - ماه و سال فارسی
\def\reportDate#1{\def\printReportDate{#1}}
% تاریخ دفاع عددی - روز/ماه/سال
\def\graduationDate#1{\def\printGraduationDate{#1}}
% کلیدواژه‌ها
\def\keywords#1{\def\printKeywords{#1}}
% نام کامل استاد راهنما
\def\supervisor#1{\def\printSupervisor{#1}}
% درجه استاد راهنما
\def\supervisorGrade#1{\def\printSupervisorGrade{#1}}
% نام کامل استاد راهنمای دوم
\def\supervisorSecond#1{\def\printSupervisorSecond{#1}}
% درجه استاد راهنمای دوم
\def\supervisorSecondGrade#1{\def\printSupervisorSecondGrade{#1}}
% نام کامل استاد مشاور
\def\advisor#1{\def\printAdvisor{#1}}
% درجه استاد مشاور
\def\advisorGrade#1{\def\printAdvisorGrade{#1}}
% نام کامل استاد مشاور دوم
\def\advisorSecond#1{\def\printAdvisorSecond{#1}}
% درجه استاد مشاور
\def\advisorSecondGrade#1{\def\printAdvisorSecondGrade{#1}}
% نام کامل داور اول
\def\examinerFirst#1{\def\printExaminerFirst{#1}}
% درجه داور اول
\def\examinerFirstGrade#1{\def\printExaminerFirstGrade{#1}}
% نام کامل داور دوم
\def\examinerSecond#1{\def\printExaminerSecond{#1}}
% درجه داور دوم
\def\examinerSecondGrade#1{\def\printExaminerSecondGrade{#1}}
% نام کامل داور سوم
\def\examinerThird#1{\def\printExaminerThird{#1}}
% درجه داور سوم
\def\examinerThirdGrade#1{\def\printExaminerThirdGrade{#1}}
% نام کامل نماینده دانشکده
\def\graduateRepresenter#1{\def\printGraduateRepresenter{#1}}
% درجه نماینده دانشکده
\def\graduateRepresenterGrade#1{\def\printGraduateRepresenterGrade{#1}}
% نام کامل مدیر گروه
\def\departmentHead#1{\def\printDepartmentHead{#1}}
% درجه مدیر گروه
\def\departmentHeadGrade#1{\def\printDepartmentHeadGrade{#1}}
% نام کامل مدیر تحصیلات تکمیلی دانشگاه
\def\graduateDirector#1{\def\printGraduateDirector{#1}}
% درجه مدیر تحصیلات تکمیلی دانشگاه
\def\graduateDirectorGrade#1{\def\printGraduateDirectorGrade{#1}}
% نام کامل معاون آموزشی دانشکده
\def\graduateAssistant#1{\def\printGraduateAssistant{#1}}
% درجه معاون آموزشی دانشکده
\def\graduateAssistantGrade#1{\def\printGraduateAssistantGrade{#1}}

% University title
\def\universityTitleEnglish#1{\def\printUniversityTitleEnglish{#1}}
% University Name
\def\universityNameEnglish#1{\def\printUniversityNameEnglish{#1}}
% Faculty Name
\def\facultyEnglish#1{\def\printFacultyEnglish{#1}}
% Department Name
\def\departementEnglish#1{\def\printDepartementEnglish{#1}}
% Degree type
\def\degreeTypeEnglish#1{\def\printDegreeTypeEnglish{#1}}
% Major
\def\majorEnglish#1{\def\printMajorEnglish{#1}}
% Document type
\def\reportTypeEnglish#1{\def\printReportTypeEnglish{#1}}
% Field of study
\def\fieldEnglish#1{\def\printFieldEnglish{#1}}
% Thesis title
\def\reportTitleEnglish#1{\def\printReportTitleEnglish{#1}}
% Supervisor fullname
\def\supervisorEnglish#1{\def\printSupervisorEnglish{#1}}
% Second Supervisor fullname
\def\supervisorSecondEnglish#1{\def\printSupervisorSecondEnglish{#1}}
% Advisor fullname
\def\advisorEnglish#1{\def\printAdvisorEnglish{#1}}
% Second Advisor fullname
\def\advisorSecondEnglish#1{\def\printAdvisorSecondEnglish{#1}}
% Student firstname
\def\authorFirstnameEnglish#1{\def\printAuthorFirstnameEnglish{#1}}
% Student lastname
\def\authorLastnameEnglish#1{\def\printAuthorLastnameEnglish{#1}}
% Report date in Month Year format
\def\reportDateEnglish#1{\def\printReportDateEnglish{#1}}
% Report date in numerical format YYYY/MM/DD
\def\graduationDateEnglish#1{\def\printGraduationDateEnglish{#1}}
% Keywords
\def\keywordsEnglish#1{\def\printKeywordsEnglish{#1}}

%%%%%%%%%%%%%%%%%%%%%%
% Set default values %
%%%%%%%%%%%%%%%%%%%%%%

% Author name
\def\printAuthor{\printAuthorFirstname \ \printAuthorLastname}
\def\printAuthorEnglish{\printAuthorFirstnameEnglish \ \printAuthorLastnameEnglish}

% عنوان دانشگاه
\universityTitle{دانشگاه شهید چمران اهواز}
% نام دانشگاه
\universityName{شهید چمران اهواز}
% لینک دانشگاه
\universityLink{http://scu.ac.ir}
% University title
\universityTitleEnglish{Shahid Chamran University of Ahvaz}
% University name
\universityNameEnglish{Shahid Chamran of Ahvaz}
% Second Supervisor
\supervisorSecond{}
\supervisorSecondGrade{}
\supervisorSecondEnglish{}
% Second Advisor
\advisorSecond{}
\advisorSecondGrade{}
\advisorSecondEnglish{}
% Third Examiner
\examinerThird{}
\examinerThirdGrade{}

% Optional links
\facultyLink{}
\departementLink{}
\authorLink{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Import Packages %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Math package
\RequirePackage{amsthm}
\RequirePackage{amssymb}
\RequirePackage{amsmath}
\RequirePackage{amsfonts}

% Table of Content package
\RequirePackage{tocloft}

% Rotation package
\RequirePackage[figuresleft]{rotating}

% Show all frames in page, for debug purpose
% \RequirePackage{showframe}

% Images package
\RequirePackage{graphicx}

% To edit captions style
\RequirePackage[font=small, skip=5pt]{caption}

% Subcaption for subfigures
\RequirePackage{subcaption}

% Package for changing headings style
\RequirePackage{fancyhdr}

% Setting the margins of page
\RequirePackage [
    % showframe,
	top = 3cm,
	bottom = 2.5cm,
	right = 3.5cm,
    left = 3cm
] {geometry}

% Multiline comments
\RequirePackage{comment}

% Force figure placement in text
\RequirePackage{float}

% Add multi-row property to tables
\RequirePackage{multirow}

% Add references in table of contents
\RequirePackage [
	nottoc,
	notlot,
	notlof
] {tocbibind}

% Hyper reference package for clickable links
\RequirePackage[breaklinks = true]{hyperref}

% Glossaries package
\RequirePackage[sanitizesort=false, sanitize={name=false}, nomain, xindy, acronym, nonumberlist=true, automake=true]{glossaries-extra}

% Flexible table width
\RequirePackage{tabularx}

% Change table row font size
\RequirePackage{tabu}

% Use line breaks in table cells
\RequirePackage{makecell}

% Footnotes in tables
\RequirePackage{tablefootnote}

% Spacing control
\RequirePackage{setspace}

% Capitalize words for english titles in cover and etc
\RequirePackage{titlecaps}

% Package to format chapter titles
\RequirePackage[explicit]{titlesec}

% Use it for \pgfmathparse command in abstract template
\RequirePackage{tikz}

% A package for conditional commands
\RequirePackage{etoolbox}

% Reset footnote counter on chapter beginning {it's a LaTeX bug}
\let\counterwithout\relax
\let\counterwithin\relax
\RequirePackage{chngcntr}
\counterwithout*{footnote}{chapter}

% Determine last page for persian abstract page
% \RequirePackage{lastpage}

% Import user packages before XePersian
\input{user_packages}

% Import the XePersian package
\RequirePackage[extrafootnotefeatures]{xepersian}

% Footnotes packages (this package should be imported after XePersian)
\RequirePackage{perpage}
\MakePerPage{footnote}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Modifications %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%______________________________________________________________________
%%%%%% General Settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

% Root directory for images
\graphicspath {{images/}}

% Set the default font family and font size
\settextfont [Scale = 1.4] {IRXLotus}
\setdigitfont [Scale = 1.4] {IRXLotus}
\setlatintextfont [Scale = 1.2] {Times New Roman}

% Define line height
\linespread {2}

% Use dash instead of dot, to separate numbers of sections, figures and tables
\SepMark{-}

% Subsubsections numbering
\setcounter{secnumdepth}{3}

% Change references section title
\renewcommand\bibname {فهرست مراجع}

% Put reference numbers in parentheses for {figure, equation, table}
% \makeatletter
% \renewcommand\p@figure{\expandafter\counter@parenthesize}
% \newcommand\counter@parenthesize[1]{(#1)}

% \renewcommand\p@equation{\expandafter\eqcounter@parenthesize}
% \newcommand\eqcounter@parenthesize[1]{(#1)}
% \renewcommand{\eqref}[1]{\ref{#1}}% renew \eqref to print one parentheses around equation number

% \renewcommand\p@table{\expandafter\tablecounter@parenthesize}
% \newcommand\tablecounter@parenthesize[1]{(#1)}
% \makeatother

% Exclude "the", "and", "or" from capitalize command (titlecaps package)
\Addlcwords{are or the and in on of etc}

% Make all the images centre in horizontal alignment
\makeatletter
\g@addto@macro\@floatboxreset\centering
\makeatother

% Generate pdf meta data
\AtBeginDocument{
    \hypersetup{
        pdfauthor={\printAuthorEnglish},
        pdftitle={\printReportTitleEnglish},
        pdfsubject={Thesis in \printReportTitleEnglish},
        pdfkeywords={\printKeywordsEnglish},
    }
}

%______________________________________________________________________
%%%%%% Table of Contents, List of Figures, List of Tables config %%%%%%
%‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
\setlength{\cftbeforeloftitleskip}{3cm} % Change vertical space between title and page margins
\setlength{\cftbeforelottitleskip}{3cm} % Change vertical space between title and page margins
\setlength{\cftbeforetoctitleskip}{3cm} % Change vertical space between title and page margins
\setlength{\cftsecindent}{0.5cm} % Indent for \section in TOC
\setlength{\cftsubsecindent}{1cm} % Indent for \subsection in TOC
\setlength{\cftsubsubsecindent}{1.5cm} % Indent for \subsubsection in TOC
\setlength{\cftfignumwidth}{32pt} % Space between number and text for list of figures
\setlength{\cftsecnumwidth}{30pt} % Space between number and text for subsubsections in TOC
\setlength{\cftsubsecnumwidth}{45pt} % Space between number and text for subsubsections in TOC
% Centering table of contents title
\renewcommand{\cfttoctitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftaftertoctitle}{\hfill}
% Centering list of figures title
\renewcommand{\cftloftitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftafterloftitle}{\hfill}
% Centering list of tables title
\renewcommand{\cftlottitlefont}{\hfill\Huge\bfseries}
\renewcommand{\cftafterlottitle}{\hfill}
% Include subsubsections in the table of contents
\setcounter{tocdepth}{2}

%______________________________________________________________________
%%%%%% Chapters' first page %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾

% Centering chapter titles
\titleformat{\chapter}[display]{\bfseries}{\huge فصل {\tartibi{chapter}}}{1em}{\centering \Huge #1}

% Make chapter titles Tartibi (aval, dovom, sevom) on the first page of each chapter
% Make chapter number arabic in other places
\makeatletter
\bidi@patchcmd{\@makechapterhead}{\thechapter}{\tartibi{chapter}}{}{}
\bidi@patchcmd{\chaptermark}{\thechapter}{\tartibi{chapter}}{}{}
\makeatother

% Remove page number on chapter pages
% \fancypagestyle{plain}{%
%   \renewcommand{\headrulewidth}{0pt}%
%   \fancyhf{}%
% }

%______________________________________________________________________
%%%%%% Headers %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾‾
% Normal pages header
\pagestyle {fancy}

% Page number at the left side of header
\lhead {\thepage}

% Chapter title at the right side of header
\rhead {\leftmark}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Helper Functions %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Define gaps
\newcommand{\smallGap}{\\ [.2cm]}
\newcommand{\mediumGap}{\\ [.5cm]}
\newcommand{\bigGap}{\\ [1cm]}

% Add a new page after table of contents
\newcommand{\makeTableOfContents}{
    \newpage
    % Set manual margins for the toc page, because it starts two sided section
    \newgeometry{twoside, left=3.5cm, right=3cm, top=3cm, bottom=2.5cm}
    \tableofcontents
    \newpage
}

% Add a new page after list of figures
\newcommand{\makeListOfFigures}{
    \newpage
    \listoffigures
    \newpage
}

% Add a new page after list of tables
\newcommand{\makeListOfTables}{
    \newpage
    \listoftables
    \newpage
}

% Required commands before starting chapters
\newcommand{\startChapters}{
	\pagenumbering{arabic}% Arabic page numbering
    \renewcommand{\arraystretch}{1.5}

    % Footnotes
    \FeetAtBottom % Pushes the footnote to the bottom of the page
}

% Required commands after chapters
\newcommand{\closeChapters}{
    \label{LastPage}% It is used to calculate total pages' number for persian abstract
    \newpage
}

% Show bibliography
\newcommand{\makeBibliography}{
    \bibliography{./edit/references}\label{chapter:references}
    \newpage
}

% Set abstracts functions
\long\def\abstractPersian#1{\def\printAbstractPersian{#1}}
\long\def\abstractEnglish#1{\def\printAbstractEnglish{#1}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Besmellah %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\printBesmellah}{
    \thispagestyle{empty}
    \begin{center}
        \vspace*{\fill}
        \includegraphics[width=1\textwidth]{besmellah}
        \vspace*{\fill}
    \end{center}
    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Cover Persian %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand{\makeCoverPersian}{

    \thispagestyle{empty}

    % University logo
    \begin{figure}
        \begin{flushleft}
            \vspace*{1.5cm}
            \includegraphics[width=0.2\linewidth]{scu_logo}
            \vspace*{1mm}
            \caption*{\raggedright \normalsize \printThesisID \hspace{7mm} }
        \end{flushleft}
    \end{figure}


    \begin{center}

        \vspace*{-4cm}
        
        % Report title
        \Large \textbf{\href{\printUniversityLink}{\printUniversityTitle}} \\

        % Department title
        \large \href{\printFacultyLink}{دانشکده \printFaculty}
        \mediumGap
        
        % Report type
        \large \printReportType \ \printDegreeType \ \printMajor \\

        % Field of study
        \large گرایش \printField
        \bigGap
        
        % Report title
        \large \textbf {عنوان}
        \smallGap
        \Large \textbf {\printReportTitle}
        \bigGap
        
        
        % Supervisor(s)
        \ifdefempty{\printSupervisorSecond}{
            \normalsize \textbf {استاد راهنما}
            \smallGap
            \large \printSupervisor
        }{
            \normalsize \textbf {استادان راهنما}
            \smallGap
            \large \printSupervisor \\
            \large \printSupervisorSecond
        }
        \bigGap
        
        % Advisor(s)
        \ifdefempty{\printAdvisorSecond}{
            \normalsize \textbf {استاد مشاور}
            \smallGap
            \large \printAdvisor
        }{
            \normalsize \textbf {استادان مشاور}
            \smallGap
            \large \printAdvisor \\
            \large \printAdvisorSecond
        }
        \bigGap
        
        % Author
        \normalsize \textbf {نگارنده}
        \smallGap
        \large \href{\printAuthorLink}{\printAuthor}
        \bigGap

        % Date
        \normalsize \printReportDate
    \end{center}

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Originality %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeOriginality}{
    \thispagestyle{empty}
    \vspace*{-1CM}
    
    \begin{spacing}{0}

    \begin{center}
    \large \textbf{گواهی صحت و اصالت \printReportType}
    \end{center}

    \noindent \textbf{عنوان \printReportType: \printReportTitle} \vspace{0.1cm}


    اینجانب \printAuthor \ دانشجوی دوره \printDegreeType \ گروه \printDepartement \ دانشکده \printFaculty \ \printUniversityTitle \ به شماره دانشجویی \printStudentID \ نویسندهٔ پایان‌نامه تحت راهنمایی \printSupervisor \ \ifdefempty{\printSupervisorSecond}{}{و \printSupervisorSecond \ }و مشاوره \printAdvisor \ \ifdefempty{\printAdvisorSecond}{}{و \printAdvisorSecond \ }متعهد می‌شوم:
    \begin{enumerate}
    \itemsep-2.6mm
    \item
    تحقیقات ارائه شده در این پایان‌نامه حاصل مطالعات علمی و عملی شخص اینجانب بوده و صحت و اصالت تمام مطالب مندرج در آن را تأیید می‌کنم.
    \item
    درصورت استفاده از آثار و نتایج پژوهش‌های دیگران، مشخصات کامل آن‌ها را در منابع ذکر نموده‌ام. 
    \item
    تاکنون مطالب درج شده در این پایان‌نامه، توسط اینجانب و یا شخص دیگری به منظور اخذ هر نوع مدرک یا امتیازی به هیچ مرجعی تسلیم نشده و بعد از این نیز توسط اینجانب نخواهد شد.
    \item
    در تدوین متن پایان‌نامه، شیوه‌نامۀ مصوب دانشگاه را رعایت نموده‌ام.
    \item
    کلیۀ حقوق معنوی این اثر به \printUniversityTitle \ تعلق دارد و مقالات مستخرج از آن، ذیل نام «\printUniversityTitle» و یا «\lr{\printUniversityTitleEnglish}» به چاپ خواهد رسید.
    \item
    حقوق معنوی تمام افرادی که دراین پایان‌نامه تأثیرگذار بوده‌اند (استادان راهنما و مشاور) در مقالات مستخرج از آن رعایت خواهد شد.
    \item
    درصورت استفاده از موجودات زنده یا بافت‌های آن‌ها، کلیۀ ضوابط و اصول اخلاقی مندرج در منشور موازین و اصول اخلاق پژوهش وزارت علوم، تحقیقات و فناوری رعایت شده است. 
    \item
    در کلیه مراحل انجام این پایان‌نامه، در مواردی که به حوزه اطلاعات شخصی افراد دسترسی یافته و یا استفاده‌ شده است، اصل رازداری، ضوابط و اصول اخلاقی انسانی رعایت شده است.
    \end{enumerate}

    \textbf{درصورت اثبات تخلف از مندرجات فوق، مسئولیت هرگونه پاسخ‌گویی به اشخاص حقیقی و حقوقی و مراجع ذی‌صلاح بر عهدۀ اینجانب بوده و \printUniversityTitle \ هیچ‌گونه مسئولیتی بر عهده نخواهد داشت. همچنین درصورت تضییع حقوق و منافع دانشگاه، حق پیگیری موضوع در مراجع ذی‌صلاح و اعمال قوانین مربوط برای \printUniversityTitle \ در حال و آینده محفوظ بوده و اینجانب مسئول پرداخت کلیۀ خسارات وارده خواهم بود.}


    \parbox{0.9\linewidth}{\raggedright \bfseries
    تاریخ \hspace{1.8cm} \ 
    \\
    نام و نام خانوادگی امضای دانشجو
    }

    \vspace{1cm}
    \fbox{
        \parbox{0.9\linewidth}{\bfseries
            \begin{center}\vspace{-0.75em} \textbf {\large مالکیت نتایج و حق نشر}\end{center}
            \hspace{0.5cm} \ 
            کلیۀ حقوق معنوی این اثر و محصولات آن (مقالات مستخرج، برنامه‌های رایانه‌ای، نرم‌افزارها و تجهیزات ساخته‌شده) به دانشگاه شهید چمران اهواز تعلق داشته و بدون اخذ اجازۀ کتبی از دانشگاه قابل واگذاری به غیر نیست. استفاده از اطلاعات و نتایج این پایان‌نامه بدون ذکر مرجع مجاز نیست. 
        }
    }

    \end{spacing}

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Evaluation %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeEvaluation}{
    \thispagestyle{empty}

    \begin{center}
    \textbf{باسمه تعالی}
    \mediumGap

    \textbf{\printUniversityTitle} \\
    دانشکده \printFaculty
    \mediumGap

    (نتیجه ارزشیابی \printReportType \ \printDegreeType)
    \mediumGap

    \small \textbf{\printReportType \ \printAuthorTitle \ \printAuthor \  دانشجوی رشته \printMajor \ گرایش \printField \ دانشکده \printFaculty \ به شماره دانشجویی \printStudentID}
    \smallGap

    \large \textbf{با عنوان: \\ \printReportTitle}
    \smallGap

    \small \textbf{جهت اخذ مدرک \printDegreeType \ در تاریخ \printGraduationDate \ توسط هیات داوران مورد ارزشیابی قرار گرفت و با درجه \printEvaluationRate \ تصویب گردید.}
    \mediumGap
    \end{center}

    \renewcommand{\arraystretch}{2.3}
    \begin{table}[h]
    \begin{tabularx}{\textwidth}{rXcl}
    ۱. & \textbf{اعضای هیات داوران} & \textbf{رتبه علمی} & \textbf{امضا} \\

    & \textbf{استاد راهنما:} \printSupervisor & \printSupervisorGrade &  \\
    % Second Supervisor
    \ifdefempty{\printSupervisorSecond}{}{
        & \textbf{استاد راهنما:} \printSupervisorSecond & \printSupervisorSecondGrade &  \\
    }
    & \textbf{استاد مشاور:} \printAdvisor & \printAdvisorGrade &  \\
    % Second Advisor
    \ifdefempty{\printAdvisorSecond}{}{
        & \textbf{استاد مشاور:} \printAdvisorSecond & \printAdvisorSecondGrade &  \\
    }
    & \textbf{استاد داور:} \printExaminerFirst & \printExaminerFirstGrade &  \\
    & \textbf{استاد داور:} \printExaminerSecond & \printExaminerSecondGrade &  \\
    % Third Examiner
    \ifdefempty{\printExaminerThird}{}{
        & \textbf{استاد داور:} \printExaminerThird & \printExaminerThirdGrade &  \\
    }
    & \textbf{نماینده تحصیلات تکمیلی:} \printGraduateRepresenter & \printGraduateRepresenterGrade &  \\

    ۲. & \textbf{مدیر گروه:} \printDepartmentHead & \printDepartmentHeadGrade &  \\

    ۳. & \textbf{معاون آموزشی و تحصیلات تکمیلی دانشکده:} \printGraduateAssistant & \printGraduateAssistantGrade &  \\

    ۴. & \textbf{مدیر تحصیلات تکمیلی دانشگاه:} \printGraduateDirector & \printGraduateDirectorGrade &  \\
    \end{tabularx}
    \end{table}

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Abstract Persian %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeAbstractPersian}{
    \thispagestyle{empty}

    \begin{center}
    \textbf{چکیده}
    \\ [-1cm]
    \end{center}

    \renewcommand{\arraystretch}{0.8}% Tighter
    \begin{tabu} to \textwidth {|X[r] | X[r] | X[r] | }
    \hline
    \rowfont{\footnotesize\bfseries}
    نام خانوادگی: \printAuthorLastname &
    نام: \printAuthorFirstname &
    شماره دانشجویی: \printStudentID \\ \hline

    \rowfont{\footnotesize\bfseries}
    \multicolumn{3}{|p{\dimexpr 3\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {عنوان \printReportType: \printReportTitle} \\ \hline

    \rowfont{\footnotesize\bfseries}
    \multicolumn{3}{|p{\dimexpr 3\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {% Supervisor(s)
        \ifdefempty{\printSupervisorSecond}{
            استاد راهنما: \printSupervisor
        }{
            استادان راهنما: \printSupervisor \ و \printSupervisorSecond
        }
    } \\ \hline

    \rowfont{\footnotesize\bfseries}
    \multicolumn{3}{|p{\dimexpr 3\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {% Advisor(s)
        \ifdefempty{\printAdvisorSecond}{
            استاد مشاور: \printAdvisor
        }{
            استادان مشاور: \printAdvisor \ و \printAdvisorSecond
        }
    } \\ \hline

    \rowfont{\footnotesize\bfseries}
    درجه تحصیلی: \printDegreeType &
    رشته: \printMajor &
    گرایش: \printField \\ \hline

    \rowfont{\footnotesize\bfseries}
    دانشگاه: \printUniversityName &
    دانشکده: \printFaculty &
    گروه: \printDepartement \\ \hline

    \rowfont{\footnotesize\bfseries}
    \multicolumn{2}{|p{\dimexpr 2\tabucolX+2\tabcolsep+\arrayrulewidth\relax} }
    {تاریخ فارغ‌التحصیلی: \printGraduationDate} &
    % تعداد صفحه: \pageref{LastPage} \\ \hline
    تعداد صفحه: \pgfmathparse{\getpagerefnumber{LastPage} - 1}\pgfmathprintnumber{\pgfmathresult} \\ \hline

    \rowfont{\footnotesize\bfseries}
    \multicolumn{3}{|p{\dimexpr 3\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {کلیدواژه‌ها: \printKeywords} \\ \hline

    \rowfont{\small\mdseries}
    \multicolumn{3}{|r|}{
        \makecell[{{p{\dimexpr 3\tabucolX+4\tabcolsep+\arrayrulewidth\relax}}}]{
            \printAbstractPersian\\[1mm]
        }
    } \\ \hline
    \end{tabu}
    \renewcommand{\arraystretch}{1}% Back to normal
    
    \newpage

    % Alphabetic page numbering for non-report pages after abstract
	\pagenumbering{alph}

}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Abstract English %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeAbstractEnglish}{
    \clearpage
    \thispagestyle{empty}

    \restoregeometry
    \newgeometry{left=3.5cm, right=3.5cm, top=3cm, bottom=1cm}

    \begin{center}
        \textbf{Abstract}\\ [-2cm]
    \end{center}

    \renewcommand{\arraystretch}{0.8}% Tighter
    \begin{tabu} to \textwidth {|X[l] | X[l] | }
    \hline
    \textbf{Surname}: \titlecap{\printAuthorLastnameEnglish} & \textbf{Name}: \titlecap{\printAuthorFirstnameEnglish} \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {\textbf{Title}: \printReportTitleEnglish} \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {% Supervisor(s)
        \ifdefempty{\printSupervisorSecondEnglish}{
            \textbf{Supervisor}: \titlecap{\printSupervisorEnglish}
        }{
            \textbf{Supervisors}: \titlecap{\printSupervisorEnglish} and \titlecap{\printSupervisorSecondEnglish}
        }
    } \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {% Advisor(s)
        \ifdefempty{\printAdvisorSecondEnglish}{
            \textbf{Advisor}: \titlecap{\printAdvisorEnglish}
        }{
            \textbf{Advisors}: \titlecap{\printAdvisorEnglish} and \titlecap{\printAdvisorSecondEnglish}
        }
    } \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {\textbf{Degree}: \printDegreeTypeEnglish} \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}
    {\textbf{University}: \titlecap{\printUniversityTitleEnglish}} \\ \hline

    \textbf{Faculty}: \titlecap{\printFacultyEnglish} & \textbf{Department}: \titlecap{\printDepartementEnglish} \\ \hline

    \multicolumn{2}{|p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}|}{\textbf{Keywords}: \titlecap{\printKeywordsEnglish}} \\ \hline

    \rowfont{\small}
    \multicolumn{2}{|r|}{
    %\linespread{1.2} % Set line spacing

        \makecell[{{p{\dimexpr 2\tabucolX+4\tabcolsep+\arrayrulewidth\relax}}}]{
                \printAbstractEnglish
        }
    } \\ \hline
    \end{tabu}

    \renewcommand{\arraystretch}{1}% Back to normal

    \newpage
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Page: Cover English %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newcommand{\makeCoverEnglish}{
    \clearpage
    \thispagestyle{empty}

    \restoregeometry
    \newgeometry{left=3.5cm, right=2.5cm, top=3cm, bottom=1cm}

    \begin{center}
        % University Logo
        \includegraphics[width=0.25\linewidth]{scu_logo_en} \\

        % University title
        \href{\printUniversityLink}{\titlecap{\printUniversityTitleEnglish}} \\
        \href{\printFacultyLink}{\titlecap{Faculty of \printFacultyEnglish}} \\

        % Department title
        \href{\printDepartementLink}{\titlecap{\printDepartementEnglish \ Department}} \\[1.5cm]

        % Report title
        \Large \textbf{\printReportTitleEnglish}
        \\[2cm]

        % Author
        \large By \\
        \Large \href{\printAuthorLink}{\titlecap{\printAuthorFirstnameEnglish \ \printAuthorLastnameEnglish}}
        \\[2cm]

        % Supervisor(s)
        \ifdefempty{\printSupervisorSecondEnglish}{
            \large Supervised By \\
            \Large \titlecap{\printSupervisorEnglish} \\[20mm]
        }{
            \large Supervised By \\[-2mm]
            \Large \titlecap{\printSupervisorEnglish} \\[-4mm]
            \Large \titlecap{\printSupervisorSecondEnglish} \\[10mm]
        }

        % Advisor(s)
        \ifdefempty{\printAdvisorSecondEnglish}{
            \large Advised By \\
            \Large \titlecap{\printAdvisorEnglish} \\[20mm]
        }{
            \large Advised By \\[-2mm]
            \Large \titlecap{\printAdvisorEnglish} \\[-4mm]
            \Large \titlecap{\printAdvisorSecondEnglish} \\[10mm]
        }

        % Date
        \normalsize \titlecap{\printReportDateEnglish}

    \end{center}
}




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Glossaries Settings %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Glossaries settings and description source:
% http://www.parsilatex.com/wiki/%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C_%D8%A7%DB%8C%D8%AC%D8%A7%D8%AF_%D9%88%D8%A7%DA%98%D9%87%E2%80%8C%D9%86%D8%A7%D9%85%D9%87

%%% تنظیمات مربوط به بسته  glossaries
%%% تعریف استایل برای واژه نامه فارسی به انگلیسی، در این استایل واژه‌های فارسی در سمت راست و واژه‌های انگلیسی در سمت چپ خواهند آمد. از حالت گروه ‌بندی استفاده می‌کنیم، 
%%% یعنی واژه‌ها در گروه‌هایی به ترتیب حروف الفبا مرتب می‌شوند، مثلا:
%%% الف
%%% افتصاد .. Economy
%%% اشکال . Failure
%%% ش
%%% شبکه .. Network
\newglossarystyle{myFaToEn}{%
	\renewenvironment{theglossary}{}{}
	\renewcommand*{\glsgroupskip}{\vskip 10mm}
	\renewcommand*{\glsgroupheading}[1]{\subsection*{\glsgetgrouptitle{##1}}}
	\renewcommand*{\glossentry}[2]{\noindent\glsentryname{##1}\dotfill\space \glsentrytext{##1}
		
	}
}

%% % تعریف استایل برای واژه نامه انگلیسی به فارسی، در این استایل واژه‌های فارسی در سمت راست و واژه‌های انگلیسی در سمت چپ خواهند آمد. از حالت گروه ‌بندی استفاده می‌کنیم، 
%% % یعنی واژه‌ها در گروه‌هایی به ترتیب حروف الفبا مرتب می‌شوند، مثلا:
%% % E
%%% Economy . اقتصاد
%% % F
%% % Failure.. اشکال
%% %N
%% % Network  شبکه

\newglossarystyle{myEntoFa}{%
	%%% این دستور در حقیقت عملیات گروه‌بندی را انجام می‌دهد. بدین صورت که واژه‌ها در بخش‌های جداگانه گروه‌بندی می‌شوند، 
	%%% عنوان بخش همان نام حرفی است که هر واژه در آن گروه با آن شروع شده است. 
	\renewenvironment{theglossary}{}{}
	\renewcommand*{\glsgroupskip}{\vskip 10mm}
	\renewcommand*{\glsgroupheading}[1]{\begin{LTR} \subsection*{\glsgetgrouptitle{##1}} \end{LTR}}
	%%% در این دستور نحوه نمایش واژه‌ها می‌آید. در این جا واژه فارسی در سمت راست و واژه انگلیسی در سمت چپ قرار داده شده است، و بین آن با نقطه پر می‌شود. 
	\renewcommand*{\glossentry}[2]{\noindent\glsentrytext{##1}\dotfill\space \glsentryname{##1}
		
	}
}

%%% تعیین استایل برای فهرست اختصارات
\newglossarystyle{myAbbrlist}{%
	%%% این دستور در حقیقت عملیات گروه‌بندی را انجام می‌دهد. بدین صورت که اختصارات‌ در بخش‌های جداگانه گروه‌بندی می‌شوند، 
	%%% عنوان بخش همان نام حرفی است که هر اختصار در آن گروه با آن شروع شده است. 
	\renewenvironment{theglossary}{}{}
	\renewcommand*{\glsgroupskip}{\vskip 10mm}
	\renewcommand*{\glsgroupheading}[1]{\begin{LTR} \subsection*{\glsgetgrouptitle{##1}} \end{LTR}}
	%%% در این دستور نحوه نمایش اختصارات می‌آید. در این جا حالت کوچک اختصار در سمت چپ و حالت بزرگ در سمت راست قرار داده شده است، و بین آن با نقطه پر می‌شود. 
	\renewcommand*{\glossentry}[2]{\noindent\glsentrytext{##1}\dotfill\space \Glsentrylong{##1}
		
	}
	%%% تغییر نام محیط abbreviation به فهرست اختصارات
	\renewcommand*{\acronymname}{\rl{فهرست اختصارات}}
}

%%% برای اجرا xindy بر روی فایل .tex و تولید واژه‌نامه‌ها و فهرست اختصارات و فهرست نمادها یکسری  فایل تعریف شده است.‌ Latex داده های مربوط به واژه نامه و .. را در این 
%%%  فایل‌ها نگهداری می‌کند. مهم‌ترین option‌ این قسمت این است که 
%%% عنوان واژه‌نامه‌ها و یا فهرست اختصارات و یا فهرست نمادها را می‌توانید در این‌جا مشخص کنید. 
%%% در این جا عباراتی مثل glg، gls، glo و  پسوند فایل‌هایی است که برای xindy بکار می‌روند. 
\newglossary[glg]{english}{gls}{glo}{واژه‌نامه انگلیسی به فارسی}
\newglossary[blg]{persian}{bls}{blo}{واژه‌نامه فارسی به انگلیسی}
\makeglossaries
\glsdisablehyper
%%% تعاریف مربوط به تولید واژه نامه و فهرست اختصارات و فهرست نمادها
%%%  در این فایل یکسری دستورات عمومی برای وارد کردن واژه‌نامه آمده است.
%%%  به دلیل این‌که قرار است این دستورات پایه‌ای را بازنویسی کنیم در این‌جا تعریف می‌کنیم. 
\let\oldgls\gls
\let\oldglspl\glspl

\makeatletter
\renewrobustcmd*{\gls}{\@ifstar\@msgls\@mgls}
\newcommand*{\@mgls}[1] {\ifthenelse{\equal{\glsentrytype{#1}}{english}}{\oldgls{#1}\glsuseri{f-#1}}{\lr{\oldgls{#1}}}}
\newcommand*{\@msgls}[1]{\ifthenelse{\equal{\glsentrytype{#1}}{english}}{\glstext{#1}\glsuseri{f-#1}}{\lr{\glsentryname{#1}}}}

\renewrobustcmd*{\glspl}{\@ifstar\@msglspl\@mglspl}
\newcommand*{\@mglspl}[1] {\ifthenelse{\equal{\glsentrytype{#1}}{english}}{\oldglspl{#1}\glsuseri{f-#1}}{\oldglspl{#1}}}
\newcommand*{\@msglspl}[1]{\ifthenelse{\equal{\glsentrytype{#1}}{english}}{\glsplural{#1}\glsuseri{f-#1}}{\glsentryplural{#1}}}
\makeatother

\newcommand{\newword}[4]{
	\newglossaryentry{#1}     {type={english},name={\lr{#2}},plural={#4},text={#3},description={}}
	\newglossaryentry{f-#1} {type={persian},name={#3},text={\lr{#2}},description={}}
}

%%% بر طبق این دستور، در اولین باری که واژه مورد نظر از واژه‌نامه وارد شود، پاورقی زده می‌شود. 
\defglsentryfmt[english]{\glsgenentryfmt\ifglsused{\glslabel}{}{\LTRfootnote{\glsentryname{\glslabel}}}}

%%% بر طبق این دستور، در اولین باری که واژه مورد نظر از فهرست اختصارات وارد شود، پاورقی زده می‌شود. 
\defglsentryfmt[acronym]{\glsentryname{\glslabel}\ifglsused{\glslabel}{}{\LTRfootnote{\glsentrydesc{\glslabel}}}}


%%%%%% =============================================== دستور برای قرار دادن فهرست اختصارات 
\newcommand{\printabbreviation}{
	\cleardoublepage
	\phantomsection
	\baselineskip=.75cm
	%% با این دستور عنوان فهرست اختصارات به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{فهرست اختصارات}
	\setglossarystyle{myAbbrlist}
	\begin{LTR}
		\Oldprintglossary[type=acronym]	
	\end{LTR}
	\clearpage
}%

\newcommand{\printacronyms}{\printabbreviation}
%%% در این جا محیط هر دو واژه نامه را باز تعریف کرده ایم، تا اولا مشکل قرار دادن صفحه اضافی را حل کنیم، ثانیا عنوان واژه نامه ها را با دستور addcontentlist وارد فهرست مطالب کرده ایم.
\let\Oldprintglossary\printglossary
\renewcommand{\printglossary}{
	\let\appendix\relax
	%% تنظیم کننده فاصله بین خطوط در این قسمت
	\clearpage
	\phantomsection
	%% این دستور موجب این می‌شود که واژه‌نامه‌ها در  حالت دو ستونی نوشته شود. 
	\twocolumn{}
	%% با این دستور عنوان واژه‌نامه به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{واژه نامه انگلیسی به فارسی}
	\setglossarystyle{myEntoFa}
	\Oldprintglossary[type=english]
	
	\clearpage
	\phantomsection
	%% با این دستور عنوان واژه‌نامه به فهرست مطالب اضافه می‌شود. 
	\addcontentsline{toc}{chapter}{واژه نامه فارسی به انگلیسی}
	\setglossarystyle{myFaToEn}
	\Oldprintglossary[type=persian]
	\onecolumn{}
}