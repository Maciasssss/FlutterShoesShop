class UnboardingContent{
   String image;
  String title;
  String description;
  UnboardingContent({ required this.description, required this.image , required this.title});
}
 
 List<UnboardingContent> contents = [
   UnboardingContent(
    description: "Pick your shoes\n", 
    image:"images/Casual_boots_1.png", 
    title: "Select from our Summer Collection\n beast menu" ),
   UnboardingContent(
    description: 'Any payment methods are available', 
    image: "images/Casual_boots_2.png", 
    title: 'Easy and online Payment'),
   UnboardingContent(
    description: "Devliver to any place in Europe", 
    image: "images/Casual_boots.png", 
    title: 'Quick Delivery')
 ];
  

  
