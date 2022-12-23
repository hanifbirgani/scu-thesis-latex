# SCU Thesis Latex
A fully featured LaTeX thesis class for [Shahid Chamran University of Ahvaz][scu-link]

![SCU Thesis Cover - جلد پایان‌نامه دانشگاه چمران اهواز][scu-cover]

***

<div dir='rtl'>

# کلاس لاتک پایان‌نامه دانشگاه شهید چمران اهواز
یک کلاس لاتک کامل برای نوشتن پایان‌نامه کارشناسی ارشد و رساله دکتری طبق آیین‌نامه نگارشی دانشگاه شهید چمران اهواز

## ویژگی‌ها
- تولید خودکار صفحات روی جلد (فارسی و انگلیسی)، چکیده (فارسی و انگلیسی)، ارزشیابی، گواهی صحت و اصالت در قالب مشخص شده توسط دانشگاه
- اجرای کامل [آیین‌نامه نگارشی دانشگاه شهید چمران][scu-guidelines] شامل نوع قلم، حاشیه صفحات، فاصله عناوین و اجزای مختلف صفحه
- امکان معرفی بیش از یک استاد راهنما/مشاور
- امکان معرفی داور سوم
- استفاده از قلم استاندارد فارسی برای فارسی‌نویسی اعداد
<!-- - قرار دادن خودکار ارجاعات درون متنی در پرانتز (برای شکل‌ها، تصاویر و فرمول‌های ریاضی) -->
- امکان ایجاد واژه‌نامه انگلیسی به فارسی و فارسی به انگلیسی با استفاده از بسته `glossaries`
- وسط‌چین بودن تصاویر به صورت پیش‌فرض
- جداسازی بهینه بخش‌های مختلف کد لاتک جهت تسلط بیشتر کاربر بر محتوای تولید شده

## محتوای بسته
بسته لاتک پایان‌نامه چمران دارای ساختار زیر است که برای دستیابی به خروجی مطلوب، این ساختار باید حفظ شود:
</div>

```
├── images
│   ├── besmellah.pdf
│   └── scu_logo.pdf
├── edit
│   ├── abstract-english.tex
│   ├── abstract-persian.tex
│   ├── acknowledgement.tex
│   ├── dedication.tex
│   ├── glossary.tex
│   ├── information.tex
│   ├── references.bib
│   └── chapters
│       ├── 1-introduction.tex
│       ├── 2-related_works.tex
│       ├── 3-proposed_method.tex
│       ├── 4-evaluation.tex
│       └── 5-conclusion.tex
├── scu-thesis.cls
├── thesis.tex
├── thesis.pdf
└── user_packages.tex
```

<div dir='rtl'>

### توضیح پوشه‌ها و فایل‌ها:

- پوشه `images`:
    - کلیه تصاویر در پوشه `images` قرار می‌گیرند. این پوشه می‌تواند شامل زیرپوشه هم باشد.
    - این پوشه مبنای (root) استفاده از تصاویر در فایل پایان‌نامه است و تصاویر خارج از این پوشه در حالت عادی شناسایی نمی‌شوند.
    - فایل‌های `besmellah.pdf` و `scu_logo.pdf` برای ساخت پایان‌نامه لازم هستند و **نباید پاک شوند**.

- پوشه `edit`:
    - این پوشه شامل محتویات متنی پایان‌نامه است.
    - فایل `abstract-english.tex` &larr; چکیده انگلیسی
    - فایل `abstract-persian.tex` &larr; چکیده فارسی
    - فایل `acknowledgement.tex` &larr; صفحهٔ سپاس
    - فایل `dedication.tex` &larr; صفحهٔ تقدیم
    - فایل `glossary.tex` &larr; دستورات مربوط به معرفی واژه‌های جدید واژه‌نامه و اختصارات
    - فایل `information.tex` &larr; اطلاعات عمومی پایان‌نامه مانند نام دانشجو، استاد راهنما و...
    - فایل `references.bib` &larr; اطلاعات مراجع پایان‌نامه با ساختار `bibtex`
    - پوشه `chapters` &larr; محتوای فصل‌های پایان‌نامه

- در صورت نیاز به دیگر پکیج‌های لاتک، دستور `usepackage` در فایل `user_packages.tex` نوشته شود. (از نوشتن دیگر دستورات در این فایل خودداری کنید، زیرا باعث ایجاد خطا خواهد شد)
- فایل `thesis.tex` فایل اصلی پایان‌نامه است که کار فراخوانی کلیه محتوای پایان‌نامه را انجام می‌دهد. تنظیمات کاربر و دستورات مورد نیاز می‌توانند در ابتدای این فایل نوشته شوند.
- فایل `scu-thesis.cls` شامل کدهای ساختاری کلاس پایان‌نامه است. **این فایل نباید ویرایش شود**.

## راهنمای استفاده
### پیش‌نیازها
1. نصب کامل TexLive روی ویندوز / لینوکس ([آموزش][texlive-install]) یا نصب کامل MacTex روی مک ([آموزش][mac-install])
1. دریافت بسته لاتک پایان‌نامه دانشگاه چمران ([دریافت فایل فشرده][zip-link])
1. آشنایی با دستورات لاتک

### وارد کردن اطلاعات
1. در پوشه `edit` فایل `information.tex` را با ویرایشگر دلخواه خود باز کنید و کلیه اطلاعات خواسته شده را طبق الگوی موجود در فایل وارد کرده و فایل را ذخیره کنید.
1. صفحات سپاس `acknowledgement.tex`، تقدیم `dedication.tex`، چکیده فارسی `abstract-persian.tex` و چکیده انگلیسی `abstract-english.tex` را با ویرایشگر دلخواه باز کرده و پس از وارد کردن متن دلخواه، آن‌ها را ذخیره کنید.

### ساخت pdf
برای ساخت pdf دستورات زیر را به ترتیب در محیط خط فرمان اجرا کنید:

</div>

```bash
xelatex -synctex=1 -interaction=nonstopmode thesis
makeglossaries thesis
bibtex8 -W -c cp1256fa thesis
xindy -L persian-variant3 -C utf8 -I xindy -M thesis.xdy -t thesis.glg -o thesis.gls thesis.glo
xindy -L persian-variant3 -C utf8 -I xindy -M thesis.xdy -t thesis.blg -o thesis.bls thesis.blo
xindy -L english -C utf8 -I xindy -M thesis.xdy -t thesis.alg -o thesis.acr thesis.acn
xelatex -synctex=1 -interaction=nonstopmode thesis
xelatex -synctex=1 -interaction=nonstopmode thesis
```

<div dir='rtl'>

می‌توانید دستورات فوق را در ویرایشگر لاتک خود تعریف کنید و بدون استفاده از خط فرمان آن‌ها را اجرا کنید. همچنین در لینوکس و مک می‌توانید از فایل `build.sh` جهت اجرای راحت‌تر دستورات استفاده کنید.

## بسته‌های پیش‌فرض
در این کلاس بسته‌های زیر به صورت پیش‌فرض فراخوانی شده‌اند:

</div>

```
amsfonts
amsmath
amssymb
amsthm
caption
chngcntr
comment
etoolbox
fancyhdr
float
geometry
glossaries
graphicx
hyperref
lastpage
makecell
multirow
perpage
rotating
setspace
subcaption
tablefootnote
tabu
tabularx
tikz
titlecaps
titlesec
tocbibind
tocloft
xepersian
```

<div dir='rtl'>

فهرست به ترتیب حروف الفباست.

### مثال: استفاده از پکیج‌های دیگر
فرض کنیم می‌خواهیم یک تابع سینوسی را در فصل اول پایان‌نامه رسم کنیم، پس از جستجو در اینترنت به قطعه کد زیر می‌رسیم:

</div>

```tex
\documentclass{report}
\usepackage{pgfplots}

\begin{document}
    \begin{tikzpicture}
        \begin{axis}
            \addplot[samples=500,domain=0:2*pi]{sin(deg(x))};
        \end{axis}
    \end{tikzpicture}
\end{document}
```

<div dir='rtl'>

برای استفاده از این کد ابتدا باید پکیج‌های لازم را در فایل `user_packages.tex` قرار دهیم. سپس کدهایی که بین `begin{document}\` و `end{document}\` قرار دارند را در فایل مربوط به محتوای فصل مربوطه کپی کنیم.

پس کد زیر را در فایل `user_packages.tex` قرار می‌دهیم:

</div>

```tex
\usepackage{pgfplots}
```

<div dir='rtl'>

و کدهای زیر را در فایل مربوط به فصل اول (`edit/chapters/1-introduction.tex`) می‌نویسیم:

</div>

```tex
\begin{tikzpicture}
    \begin{axis}
        \addplot[samples=500,domain=0:2*pi]{sin(deg(x))};
    \end{axis}
\end{tikzpicture}
```

<div dir='rtl'>

## گزارش مشکلات
سوالات لاتک خود را در بخش پرسش و پاسخ [سایت پارسی لاتک][parsilatex-qa] با برچسب `scu-thesis` مطرح کنید. بخش issues این مخزن گیتهاب مربوط به ایراد در کدهای ساختاری کلاس است، لطفا از پرسیدن سوالات عمومی لاتک در این بخش خودداری فرمایید.

</div>

[scu-link]: https://scu.ac.ir

[scu-cover]: ./images/example.png

[scu-guidelines]: http://postgrad.scu.ac.ir/documents/488674/1745555/%D8%AF%D8%B3%D8%AA%D9%88%D8%B1%D8%A7%D9%84%D8%B9%D9%85%D9%84%20%D9%86%DA%AF%D8%A7%D8%B1%D8%B4%20%D9%88%20%D8%AA%D8%AF%D9%88%DB%8C%D9%86%20%D9%BE%D8%A7%DB%8C%D8%A7%D9%86%20%D9%86%D8%A7%D9%85%D9%87%20%D8%AF%D9%88%D8%B1%D9%87%20%D9%87%D8%A7%DB%8C%20%D8%AA%D8%AD%D8%B5%DB%8C%D9%84%D8%A7%D8%AA%20%D8%AA%DA%A9%D9%85%DB%8C%D9%84%DB%8C..pdf

[parsilatex-qa]: http://qa.parsilatex.com/tag/scu-thesis

[texlive-install]: http://www.parsilatex.com/wiki/%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C_%D9%86%D8%B5%D8%A8_%D8%AA%DA%A9%E2%80%8C%D9%84%D8%A7%DB%8C%D9%88

[mac-install]: http://www.parsilatex.com/wiki/%D8%B1%D8%A7%D9%87%D9%86%D9%85%D8%A7%DB%8C_%D9%86%D8%B5%D8%A8_%D8%AA%DA%A9%E2%80%8C%D9%84%D8%A7%DB%8C%D9%88_%D8%AF%D8%B1_%D9%85%DA%A9%DB%8C%D9%86%D8%AA%D8%A7%D8%B4

[zip-link]: https://github.com/hanifbirgani/scu-thesis-latex/archive/refs/heads/main.zip