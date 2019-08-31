<div class="copyright">{#
#}{% set current = date(Date.now(), "YYYY") %}{#
#}&copy; {% if theme.footer.since and theme.footer.since != current %}{{ theme.footer.since }} &mdash; {% endif %}{#
#}<span itemprop="copyrightYear">{{ current }}</span>
  <span class="with-love">
    <i class="fa fa-heartbeat"></i>
  </span>
  <span class="author" itemprop="copyrightHolder">{{ theme.footer.copyright || config.author }}</span>
  <span title="博客总字数"><i class="fa fa-edit"></i>&ensp;<span class="post-count">{{ totalcount(site) }}</span>字</span>

  {% set runtime = theme.run_time.creat_date %}
<script>
  var now = new Date(); 
  function createtime() { 
      var grt= new Date("{{ runtime }}");
      now.setTime(now.getTime()+250); 
      days = (now - grt ) / 1000 / 60 / 60 / 24; dnum = Math.floor(days); 
      hours = (now - grt ) / 1000 / 60 / 60 - (24 * dnum); hnum = Math.floor(hours); 
      if(String(hnum).length ==1 ){
        hnum = "0" + hnum;
      }
      minutes = (now - grt ) / 1000 /60 - (24 * 60 * dnum) - (60 * hnum); 
      mnum = Math.floor(minutes);
      if(String(mnum).length ==1 ){
        mnum = "0" + mnum;
      } 
      seconds = (now - grt ) / 1000 - (24 * 60 * 60 * dnum) - (60 * 60 * hnum) - (60 * mnum); 
      snum = Math.round(seconds);
      if(String(snum).length ==1 ){
        snum = "0" + snum;
      }
      document.getElementById("timeDate").innerHTML =dnum+"&thinsp;天"; 
      document.getElementById("times").innerHTML = hnum + "&thinsp;时" + mnum + "&thinsp;分" + snum + "&thinsp;秒"; 
  } 
setInterval("createtime()",250);
</script>

  {% if theme.post_wordcount.totalcount %}
    <span class="post-meta-divider">|</span>
    <span class="post-meta-item-icon">
      <i class="fa fa-star"></i>
    </span>
    {% if theme.post_wordcount.item_text %}
      <span class="post-meta-item-text">{{ __('post.totalcount') }}&#58;</span>
    {% endif %}
    <span title="{{ __('post.totalcount') }}">{#
    #}{{ totalcount(site, '0,0.0a') }}{#
  #}</span>
  {% endif %}
</div>

{% if theme.footer.custom_text %}
  <div class="footer-custom">{#
  #}{{ theme.footer.custom_text }}{#
#}</div>
{% endif %}