---
layout: default
permalink: /contact/
---
<div class="contact-page">
  <h1>{{site.data.contact.title}}</h1>

  <div class="contact-section">
    <h2>{{site.data.contact.betatest.title}}</h2>
    {% for item in site.data.contact.betatest.content %}
        <p>{{item}}</p>
    {% endfor %}
  </div>

  <div class="contact-section">
    <h2>{{site.data.contact.news.title}}</h2>
    {% for item in site.data.contact.news.content %}
        <p>{{item}}</p>
    {% endfor %}
  </div>

  <div class="contact-section">
    <h2>{{site.data.contact.direct.title}}</h2>
    {% for item in site.data.contact.direct.content %}
        <p>{{item}}</p>
    {% endfor %}
  </div>
  
</div>
