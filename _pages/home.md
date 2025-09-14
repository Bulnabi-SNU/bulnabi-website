---
layout: splash
permalink: "/"
hidden: true
header:
  overlay_color: "#2c3e50"
  overlay_filter: 0.5
  overlay_image: "/assets/images/hero-aircraft.jpg"
  actions:
  - label: "<i class='fas fa-book'></i> 위키 보기"
    url: "/wiki"
    btn_class: btn--primary btn--large
  - label: "<i class='fas fa-plane'></i> 프로젝트 보기"
    url: "/projects/"
    btn_class: btn--inverse btn--large
excerpt: 사이트 아직 제작중입니다!!!
intro:
- excerpt: 불나비는 항공에 대한 열정을 가진 서울대학교 학생들이 모여 **항공기 설계**, **제작**, **비행**을 통해 실무 경험을
    쌓고 항공 기술을 연구하는 동아리입니다.
feature_row:
- image_path: "/assets/images/project-robot-aviation.jpg"
  alt: 로봇항공기대회
  title: 로봇항공기대회
  excerpt: 매년 참가하는 대한민국 로봇항공기대회에서 우수한 성과를 거두고 있습니다.
  url: "/projects/2024-rac/"
  btn_class: btn--primary
  btn_label: 자세히 보기
- image_path: "/assets/images/project-aiaa-dbf.jpg"
  alt: AIAA DBF
  title: AIAA Design Build Fly
  excerpt: 국제 항공기 설계 경진대회 AIAA DBF에 참가하여 글로벌 경험을 쌓고 있습니다.
  url: "/projects/2024-aiaa-dbf/"
  btn_class: btn--primary
  btn_label: 자세히 보기
- image_path: "/assets/images/club-activities.jpg"
  alt: 동아리 활동
  title: 다양한 활동
  excerpt: 항공기 제작 외에도 스터디, 세미나, 견학 등 다양한 활동을 진행합니다.
  url: "/about/"
  btn_class: btn--primary
  btn_label: 자세히 보기
feature_row2:
- image_path: "/assets/images/about-us.jpg"
  alt: 불나비 소개
  title: 불나비를 소개합니다
  excerpt: "**불나비**는 하늘을 향한 꿈과 열정을 품고 1980년에 창설된 서울대학교의 대표적인 항공동아리입니다. 40여 년의 역사와
    전통을 바탕으로 수많은 항공 전문가를 배출하며, 대한민국 항공 산업 발전에 기여하고 있습니다."
  url: "/about/"
  btn_label: 동아리 소개 보기
  btn_class: btn--primary
feature_row3:
- image_path: "/assets/images/gallery-preview.jpg"
  alt: 활동 갤러리
  title: 활동 모습
  excerpt: 불나비의 다양한 활동 모습을 사진과 영상으로 확인해보세요. 프로젝트 진행 과정부터 완성된 항공기의 비행 장면까지!
  url: "/gallery/"
  btn_label: 갤러리 보기
  btn_class: btn--primary
---

{% include feature_row id="intro" type="center" %}

## 주요 프로젝트

{% include feature_row %}

{% include feature_row id="feature_row2" type="left" %}

{% include feature_row id="feature_row3" type="right" %}

---

## 소식 & 업데이트

<div class="recent-posts">
  {% for post in site.posts limit: 3 %}
  <div class="post-preview">
    <h3><a href="{{ post.url | relative_url }}">{{ post.title }}</a></h3>
    <p class="post-meta">{{ post.date | date: "%Y년 %m월 %d일" }}</p>
    <p>{{ post.excerpt | strip_html | truncate: 100 }}</p>
  </div>
  {% endfor %}
</div>

## 연락처 & 소셜미디어

불나비에 관심이 있으시거나 문의사항이 있으시면 언제든 연락 주세요!

[Instagram](https://instagram.com/bulnabi_snu){: .btn .btn--info}
[GitHub](https://github.com/bulnabi-snu){: .btn .btn--dark}
[Notion](https://notion.so/bulnabi){: .btn .btn--primary}

<style>
.recent-posts {
  margin: 2em 0;
}

.post-preview {
  margin-bottom: 1.5em;
  padding: 1em;
  border-left: 4px solid #3498db;
  background-color: #f8f9fa;
}

.post-preview h3 {
  margin-top: 0;
  margin-bottom: 0.5em;
}

.post-meta {
  color: #666;
  font-size: 0.9em;
  margin-bottom: 0.5em;
}
</style>
