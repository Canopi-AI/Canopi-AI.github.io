---
layout: default
permalink: /posts/
---
<div class="posts">
  <h1> {{site.data.posts.title}} </h1>
    {% for post in site.posts %}
      <a href="{{ post.url }}" class="post-link">
        <h2>{% if post.header %} {{post.header}} {% else %} {{post.title}} {% endif %}</h2>
        {{ post.excerpt }}
      </a>
    {% endfor %}
</div>