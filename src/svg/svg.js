let svgSprite = `<svg <%= attributesToString(svgAttrs)%>>
<% if () { %><defs>
  <%= defs.trim() %>
  </defs>
  <% } %><%= icons.map(svgdataToSymbol.join('').replace(/[\n\r\t]/g, ' ')%>
`;

let script = (function () {
  let scripts = document.getElementsByTagName('script');
  return scripts[scripts.length - 1];
})();

const shouldInjectCss = script.getAttribute('data-injectcss');

/**
 * @description
 * @param {Element} el
 * @param {Element} target
 */
const before = function (el, target) {
  target.parentNode.insertBefore(el, target);
};

/**
 * @description
 * @param {Element} el
 * @param {Element} target
 */
const prepend = function (el, target) {
  if (target.firstChild) {
    before(el, target.firstChild);
  } else {
    target.appendChild(el);
  }
};

function appendSvg() {
  let div, svg;
  div = document.createElement('div');
  div.innerHTML = svgSprite;
  svgSprite = null;
  svg = div.getElementsByTagName('svg')[0];
  if (svg) {
    svg.setAttribute('aria-hidden', 'true');
    svg.style.position = 'absolute';
    svg.style.width = 0;
    svg.style.height = 0;
    svg.style.overflow = 'hidden';
    prepend(svg, document.body);
  }
}

if (shouldInjectCss && !window.__iconfont__svg__cssinject__) {
  window.__iconfont__svg__cssinject__ = true;

  try {
    document.write(
      '<style>.svgfont {display: inline-block;width: 1em;height: 1em;fill: currentColor;vertical-align: -0.1em;font-size: 16px;}</style>'
    );
  } catch (e) {
    console && console.log(e);
  }
}
export default appendSvg;
