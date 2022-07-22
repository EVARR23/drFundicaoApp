import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:scroll_to_id/scroll_to_id.dart';


details() {
  final scrollController = ScrollController();
  ScrollToId scrollToId = ScrollToId(scrollController: scrollController);
  return InteractiveScrollViewer(
    scrollToId: scrollToId,
    children: <ScrollContent>[
      ScrollContent(id: 'a', child: carouselSlider()),
      ScrollContent(id: 'b', child: htmlContent())
    ],
  );
}

htmlContent() {
  final _htmlContent = """
  <div>
    <h1>This is a title</h1>
    <p>This is a <strong>paragraph</strong>.</p>
    <p>I like <i>dogs</i></p>
    <p>Red text</p>
    <ul>
        <li>List item 1</li>
        <li>List item 2</li>
        <li>List item 3</li>
    </ul>
    <img src='https://www.kindacode.com/wp-content/uploads/2020/11/my-dog.jpg' />
  </div>
  """;
  return Html(
    data: _htmlContent,
    // Styling with CSS (not real CSS)
    style: {
      'h1': Style(color: Colors.red),
      'p': Style(color: Colors.black87, fontSize: FontSize.medium),
      'ul': Style(margin: const EdgeInsets.symmetric(vertical: 20))
    },
  );
}

carouselSlider() {
  return CarouselSlider(
    options: CarouselOptions(height: 400.0),
    items: [1, 2, 3, 4, 5].map((i) {
      return Builder(
        builder: (BuildContext context) {
          return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(color: Colors.amber),
              child: Text(
                'text $i',
                style: TextStyle(fontSize: 16.0),
              ));
        },
      );
    }).toList(),
  );
}
