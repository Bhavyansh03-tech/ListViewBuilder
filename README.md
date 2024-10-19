# Flutter List View Example

This repository contains a simple Flutter application demonstrating a home page layout with a horizontal list for stories and a vertical list for posts.

## Features

- **Horizontal ListView**: Displays a list of story items in a horizontal scrollable format.
- **Vertical ListView**: Shows a list of post items in a vertically scrollable format.
- **Responsive Design**: Adapts to different screen sizes using `SafeArea` and layout widgets.

## Preview
<img src="https://github.com/user-attachments/assets/1c1aae62-42a5-4508-8714-4b38f58fb123" alt="First Screenshot" style="width: 200px; height: auto; margin-right: 10px;">

## Code Structure

This file contains the layout and UI for the home page, including the story and post lists.
```dart
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> posts = ['post0', 'post1', 'post2', 'post3', 'post4', 'post5', 'post6', 'post7'];
    final List<String> story = ['story0', 'story1', 'story2', 'story3', 'story4', 'story5', 'story6', 'story7'];

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Horizontal ListView.builder
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 10, 0, 0),
                child: Container(alignment: AlignmentDirectional.centerStart, child: const Text("Horizontal", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
              ),
              SizedBox(
                height: 100, // Fixed height for horizontal ListView
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return CircleItem(story[index]);
                  },
                ),
              ),

              // Vertical ListView.builder
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 20, 0, 0),
                child: Container(alignment: AlignmentDirectional.centerStart, child: const Text("Vertical", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold))),
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(), // Disable separate scrolling
                shrinkWrap: true, // Make ListView take only needed space
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return BoxItem(posts[index]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
```

## Getting Started

To run this project on your local machine:

1. Clone the repository and open it in your IDE:
   ```bash
   git clone https://github.com/Bhavyansh03-tech/FlutterTabBar.git
   ```
2. Run the project on an emulator or a physical device.
   ```bash
   flutter run
   ```

## Contributing

Contributions are welcome! Please fork the repository and submit a pull request for any improvements or bug fixes.

1. Fork the repository.
2. Create your feature branch (`git checkout -b feature/your-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin feature/your-feature`).
5. Create a new Pull Request.

## Contact

For questions or feedback, please contact [@Bhavyansh03-tech](https://github.com/Bhavyansh03-tech) on GitHub or connect with me on [LinkedIn](https://www.linkedin.com/in/bhavyansh03/).

---
