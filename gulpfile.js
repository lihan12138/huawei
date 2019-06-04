const gulp = require('gulp');
const htmlmin = require('gulp-htmlmin');
const rename = require('gulp-rename');
const cssmin = require('gulp-cssmin');
const concat = require('gulp-concat');
const uglify = require('gulp-uglify');
const imagemin = require('gulp-imagemin');
const less = require('gulp-less');
const path = require('path');


gulp.task('htmlmin', () => {
    return gulp.src(['*.html', 'src/html/*.html'])
        .pipe(htmlmin({ collapseWhitespace: true }))
        .pipe(gulp.dest('dist/html'));
});


gulp.task('cssmin', () => {
    return gulp.src(['./src/css/*.css', '!src/css/*.min.css'])
        .pipe(cssmin())
        .pipe(rename(function(path) {
            path.extname = ".min.css";
        }))
        .pipe(gulp.dest('dist/css'));
});

gulp.task('js', () => {
    //合并文件时需要注意先后顺序
    //先后顺序和依赖有关
    return gulp.src(['src/js/index.js', 'src/js/nav.js'])
        .pipe(concat('all.js'))
        .pipe(gulp.dest('dist/js'))
        .pipe(rename('all.min.js'))
        .pipe(uglify())
        .pipe(gulp.dest('dist/js'));
});

gulp.task('imgmin', () => {
    return gulp.src('src/img/*')
        .pipe(imagemin())
        .pipe(gulp.dest('dist/img'));
});

gulp.task('less', () => {
    return gulp.src('src/css/*.less')
        .pipe(less({
            paths: [path.join(__dirname, 'less', 'includes')]
        }))
        .pipe(gulp.dest('./src/css'));
});

gulp.task('watch', () => {
    gulp.watch(['*.html', './src/html/*.html', './src/css/*.css', './src/js/*.js'], gulp.series('htmlmin', 'cssmin', 'js'));
});

gulp.task('watchless', () => {
    gulp.watch('./src/css/*.less', gulp.series('less'));
});