'use strict';
function Template(tpl) {
  var html = tpl.replace(/[\n\r\t]/g, '').replace(/[\s]+/g, ' '),
      regExpTpl = /<%(.*?)%>/g,
      regExpCode = /(^( )?(if|for|else|switch|case|break|{|}))(.*)?/g,
      result = '', cursor = 0, code = 'var str = "";\n', fn;

  while (result = regExpTpl.exec(html)) {
    var textRow = html.slice(cursor, result.index);
    var codeRow = result[1];
    code += 'str += "' + textRow.replace('"', '\\"') + '";\n';
    codeRow.match(regExpCode) ? code += codeRow : code += 'str += ' + codeRow + ';\n';
    cursor = result.index + result[0].length;
  }
  code += 'str += "' + html.substr(cursor, html.length - cursor).replace('"', '\\"') + '";return str;';
  fn = new Function(code.replace(/[\r\t\n]/g, ''));
  this.render = function (data) {
    return fn.apply(data);
  }
}
