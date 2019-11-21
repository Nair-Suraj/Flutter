class Node {
  Node(this.title, [this.level = 1, this.children = const <Node>[]]);

  final String title;
  final int level;

  final List<Node> children;
}

final List<Node> data = <Node>[
  Node(
    'Guideline 1',
    1,
    <Node>[
      Node(
        'Chapter 1',
        2,
        <Node>[
          Node('Subchapter 1', 3),
          Node('Subchapter 2', 3),
          Node('Subchapter 3', 3),
        ],
      ),
      Node('Chapter 2', 2),
      Node('Chapter 3', 2),
    ],
  ),
  Node(
    'Guideline 2',
    1,
    <Node>[
      Node('Chapter 1', 2),
      Node('Chapter 2', 2),
    ],
  ),
  Node(
    'Guideline 3',
    1,
    <Node>[
      Node('Chapter 1', 2),
      Node('Chapter 2', 2),
      Node(
        'Subchapter 1',
        3,
        <Node>[
          Node('4th level subchapter 1', 4),
          Node('4th level subchapter 1', 4),
          Node('4th level subchapter 1', 4),
          Node('4th level subchapter 1', 4),
        ],
      ),
    ],
  ),
];