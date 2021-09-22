const gulp = require('gulp');
const rename = require('gulp-rename');
const svgSymbols = require('gulp-svg-symbols');

gulp.task('svgSymbols', () => {
  return gulp
    .src('svg/*.svg')
    .pipe(
      svgSymbols({
        slug: name => name,
        templates: ['svg.js'],
      })
    )
    .pipe(rename('svg-icons.js'))
    .pipe(gulp.dest('assets/'));
});
