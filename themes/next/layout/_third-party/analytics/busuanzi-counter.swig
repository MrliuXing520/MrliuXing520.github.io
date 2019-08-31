{% if theme.busuanzi_count.enable %}
<div class="busuanzi-count">
  <script async src="https://busuanzi.ibruce.info/busuanzi/2.3/busuanzi.pure.mini.js"></script>

  {% if theme.busuanzi_count.site_uv %}
    <span class="site-uv">
      {{ theme.busuanzi_count.site_uv_header }}
      <span class="busuanzi-value" id="busuanzi_value_site_uv"></span>
      {{ theme.busuanzi_count.site_uv_footer }}
    </span>
  {% endif %}

   {% if theme.run_time.enable %}
    <span id="timeDate" title="网站运行时间">载入天数...</span><span id="times" title="网站运行时间">载入时分秒...</span>
  {% endif %}

  {% if theme.busuanzi_count.site_pv %}
    <span class="site-pv">
    <span class="post-meta-divider">|</span>
      {{ theme.busuanzi_count.site_pv_header }}
      <span class="busuanzi-value" id="busuanzi_value_site_pv"></span>
      {{ theme.busuanzi_count.site_pv_footer }}
    </span>
  {% endif %}
</div>
{% endif %}