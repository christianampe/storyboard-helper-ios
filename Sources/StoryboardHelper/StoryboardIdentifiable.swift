/// A protocol used for identifying views from storyboards.
protocol StoryboardIdentifiable {
    
    /// The identifier used to describe an object referenced from interface builder.
    static var storyboardIdentifier: String { get }
}
