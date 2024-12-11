package com.controller;

import com.model.User;
import com.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/")
    public ModelAndView showWelcomePage() {
        return new ModelAndView("login");
    }
    
    @GetMapping("/admin")
    public String showAdminLoginForm(Model model) {
        return "admin-login";
    }

    @PostMapping("/admin-login")
    public String processAdminLogin(
            @RequestParam("adminUsername") String adminUsername,
            @RequestParam("adminPassword") String adminPassword,
            Model model) {
        
        // Replace with actual admin credentials check or fetch from DB
        String defaultAdminUsername = "admin";
        String defaultAdminPassword = "admin";

        if (adminUsername.equals(defaultAdminUsername) && adminPassword.equals(defaultAdminPassword)) {
            return "redirect:/admin-dashboard";
        }

        model.addAttribute("error", "Invalid admin credentials");
        return "admin-login";
    }

    @GetMapping("/admin-dashboard")
    public String adminDashboard() {
        return "admin-dashboard"; // Create an admin dashboard page if needed
    }

    @GetMapping("/signup")
    public String showSignupForm(Model model) {
        model.addAttribute("user", new User());
        return "signup";
    }

    @PostMapping("/signup")
    public String processSignup(User user) {
        userRepository.save(user);
        return "redirect:/login?signupSuccess=true";
    }

    @GetMapping("/login")
    public String showLoginForm(@RequestParam(value = "signupSuccess", required = false) String signupSuccess, Model model) {
        if (signupSuccess != null) {
            model.addAttribute("message", "Signup successful! Please log in.");
        }
        return "login";
    }

    @PostMapping("/login")
    public String processLogin(User user, Model model) {
        User foundUser = userRepository.findByUsername(user.getUsername());
        if (foundUser != null && foundUser.getPassword().equals(user.getPassword())) {
            return "redirect:/welcome";
        }
        model.addAttribute("error", "Invalid username or password");
        return "login";
    }

    @GetMapping("/welcome")
    public String welcomePage() {
        return "welcome";
    }

    @GetMapping("/about")
    public String aboutPage() {
        return "about";
    }

    @GetMapping("/packages")
    public String packagesPage() {
        return "packages";
    }

    @GetMapping("/gallery")
    public String galleryPage() {
        return "gallery";
    }

    @GetMapping("/contact")
    public String contactPage() {
        return "contact";
    }

    @PostMapping("/contact")
    public String submitContactForm(String name, String email, String message, Model model) {
        model.addAttribute("successMessage", "Thank you for contacting us. We'll get back to you soon!");
        return "contact";
    }

    @GetMapping("/booking")
    public String showBookingForm() {
        return "booking"; 
    }
    

    @PostMapping("/submitBooking")
    public String processBooking(
            @RequestParam("fullName") String fullName,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("package") String tourPackage,
            @RequestParam("travelDate") String travelDate,
            @RequestParam(value = "specialRequests", required = false) String specialRequests,
            Model model) {

        // Generate a unique booking ID (for demonstration)
        String bookingId = "BK" + System.currentTimeMillis();

        // Add attributes to the model
        model.addAttribute("bookingId", bookingId);
        model.addAttribute("name", fullName);
        model.addAttribute("email", email);
        model.addAttribute("phone", phone);
        model.addAttribute("checkInDate", travelDate); // Assuming check-in date is travel date
        model.addAttribute("checkOutDate", "N/A"); // If you have no check-out date
        model.addAttribute("guests", "N/A"); // Add logic for number of guests if needed
        model.addAttribute("specialRequests", specialRequests);

        return "bookingConfirmation"; 
    }

    // New method to handle the "View" button click and show image explanation
    @GetMapping("/viewExplanation")
    public String viewExplanation(@RequestParam("destination") String destination, Model model) {
        String explanation = "";

        switch (destination) {
            case "Beach":
                explanation = "Discover the stunning beauty of our Beach Paradise with its pristine sand and crystal-clear waters.\r\n"
                		+ "\r\n"
                		+ "This tropical haven is the perfect escape for those seeking relaxation, adventure, and breathtaking natural beauty. Imagine walking along miles of untouched beaches, where the soft, golden sand meets the sparkling blue ocean. The gentle waves provide the ideal backdrop for both sunbathing and water activities.\r\n"
                		+ "\r\n"
                		+ "Our Beach Paradise offers a variety of experiences, from thrilling water sports like surfing, snorkeling, and kayaking, to serene boat rides across the calm, turquoise waters. Whether you're basking under the warm sun, exploring vibrant coral reefs, or simply enjoying the peace of the beach, there's something for everyone.\r\n"
                		+ "\r\n"
                		+ "As the day winds down, the horizon turns into a canvas of colors as the sun sets over the water, creating one of the most spectacular views you'll ever experience. This is the ideal destination for couples looking for romance, families seeking adventure, or solo travelers wanting to unwind and connect with nature.\r\n"
                		+ "\r\n"
                		+ "Join us at Beach Paradise for an unforgettable experience that combines natural beauty, adventure, and tranquility in one incredible destination..";
                break;
            case "Cultural Retreats":
                explanation = "\"Immerse yourself in the rich traditions and vibrant cultures of our Cultural Retreats, where history and modernity blend seamlessly to create unforgettable experiences. Explore ancient temples, historical landmarks, and picturesque villages that have been preserved over centuries. Our Cultural Retreats offer you the chance to experience the heart of local life through unique cultural events, such as traditional dance performances, music festivals, and artisan workshops.\r\n"
                		+ "\r\n"
                		+ "You will have the opportunity to interact with local artisans, learn ancient crafts, and indulge in traditional cuisine that reflects the diversity of each destination. Whether it's participating in a tea ceremony in a peaceful Japanese garden, exploring sacred ruins in South America, or learning the art of pottery from skilled local potters, these retreats allow you to connect deeply with the local culture.\r\n"
                		+ "\r\n"
                		+ "For those who wish to explore the past and its stories, guided tours will take you through cities rich in heritage, where every monument tells a story. The warmth and hospitality of the people will make your experience truly special, offering you insights into their way of life, customs, and the significance of each tradition.\"";
                break;
            case "Mountain Adventure":
                explanation = "\"Embark on an exhilarating Mountain Adventure and explore breathtaking landscapes that will leave you awe-struck. Traverse through towering peaks, rugged terrains, and lush valleys that showcase the raw beauty of nature. Our Mountain Adventures offer a perfect blend of adrenaline and serenity, whether you're an experienced mountaineer or a casual explorer.\r\n"
                		+ "\r\n"
                		+ "Trek along scenic trails that wind through dense forests, high-altitude meadows, and across crystal-clear mountain lakes. Experience the thrill of scaling cliffs, crossing suspension bridges, and conquering summits that provide panoramic views of snow-capped mountains and endless horizons. For those seeking a challenge, we offer expert-guided expeditions to some of the world’s most iconic peaks.\r\n"
                		+ "\r\n"
                		+ "Along the way, you'll encounter diverse wildlife, including alpine animals and bird species unique to the region, and learn about the ecosystems that thrive in these extreme environments. Take part in thrilling activities like rock climbing, zip-lining, or paragliding, and experience the mountains from a completely new perspective.\r\n"
                		+ "\r\n"
                		+ "After a day of adventure, unwind in cozy mountain lodges, where you can enjoy hearty meals, warm beverages, and stargazing under the clear skies. Whether you're seeking adventure, tranquility, or both, our Mountain Adventure offers an unforgettable escape into the heart of nature.\"";
                break;
            case "Cruise Packages":
                explanation = "\"Relax and enjoy luxurious cruises to exotic destinations with our exclusive cruise packages. Whether you're looking to unwind on the deck with the sun setting over the ocean or explore remote islands, our cruises offer the perfect balance of relaxation and adventure.\r\n"
                		+ "\r\n"
                		+ "Our handpicked cruise itineraries take you to some of the most stunning locations around the world—tropical paradises, ancient coastal cities, and serene archipelagos. Experience the rich culture, history, and natural beauty of each destination while enjoying world-class amenities and service onboard.\r\n"
                		+ "\r\n"
                		+ "Onboard, you'll be pampered with gourmet dining, luxurious spa treatments, and a range of entertainment options, including Broadway-style shows, live music, and themed parties. Enjoy spacious staterooms with breathtaking ocean views, and indulge in personalized services designed to cater to your every need.\r\n"
                		+ "\r\n"
                		+ "For those who seek adventure, our cruises offer exciting shore excursions, such as snorkeling in crystal-clear waters, island-hopping, whale watching, and exploring local markets and ancient ruins. Whether you're exploring ancient ruins in the Mediterranean, relaxing on the beaches of the Caribbean, or cruising through the picturesque fjords of Norway, every moment of your cruise promises something new and unforgettable.\r\n"
                		+ "\r\n"
                		+ "Take advantage of exclusive on-board amenities such as infinity pools, state-of-the-art gyms, and fitness classes, or simply relax on the deck with a refreshing cocktail as you watch the stars come to life. Our cruise packages are designed to create memories that will last a lifetime.\"";
                break;
            case "Wildlife Sanctuaries":
                explanation = "\"Witness the majestic wildlife in their natural habitat at our renowned Wildlife Sanctuaries. These protected areas are dedicated to preserving some of the world's most endangered species, offering a safe haven where animals roam freely in their natural environment.\r\n"
                		+ "\r\n"
                		+ "Explore lush forests, sprawling savannas, and serene wetlands as you embark on guided safaris, nature walks, and wildlife observation tours. Our sanctuaries are home to a diverse range of species, from powerful tigers and elusive leopards to gentle elephants and vibrant birdlife, offering you a rare opportunity to witness these animals up close.\r\n"
                		+ "\r\n"
                		+ "Immerse yourself in the sights and sounds of the wild, as expert guides share fascinating insights into the ecosystems, animal behaviors, and conservation efforts in place. Learn how local communities and conservation organizations work together to protect these natural treasures and their inhabitants.\r\n"
                		+ "\r\n"
                		+ "For those seeking a more adventurous experience, our sanctuaries offer opportunities for trekking, camping, and even volunteering in conservation programs. Whether you're observing animals from the safety of a jeep or hiking through dense jungles, each moment spent in the sanctuary promises an unforgettable connection with nature.\r\n"
                		+ "\r\n"
                		+ "In addition to wildlife encounters, our sanctuaries also provide eco-friendly accommodations, offering a perfect balance of comfort and sustainability. Rest in cozy lodges, enjoy farm-to-table meals, and relax surrounded by nature. Every visit helps support the sanctuaries' ongoing conservation efforts, ensuring a lasting impact on both the environment and the animals that call it home.\"\r\n"
                		+ "\r\n"
                		+ "";
                break;
            case "City Lights Tour":
                explanation = "\"Experience the vibrant nightlife and iconic landmarks on our City Lights Tour. Whether you're an early riser or a night owl, our tour offers the best of both worlds, taking you on an unforgettable journey through the bustling streets of the city.\r\n"
                		+ "\r\n"
                		+ "As the sun sets, the city transforms into a dazzling wonderland of twinkling lights, where the architecture and landmarks shine in their full glory. Discover the charm of neon-lit streets, towering skyscrapers, and historic monuments that have been standing for centuries, all while soaking in the energy of the city that never sleeps.\r\n"
                		+ "\r\n"
                		+ "Enjoy a guided tour through the most iconic spots, from famous squares and bridges to cultural hubs and vibrant entertainment districts. Stop for a photo op at iconic landmarks, such as glittering fountains, architectural masterpieces, and breathtaking city views from rooftop bars or observation decks.\r\n"
                		+ "\r\n"
                		+ "Our City Lights Tour also takes you into the heart of the city’s nightlife, where you can experience live music, taste local delicacies at street food stalls, and immerse yourself in the rhythm of the night. Whether you're interested in modern clubs, intimate bars, or cultural performances, this tour has something for everyone.\r\n"
                		+ "\r\n"
                		+ "You’ll also have the chance to meet locals and other travelers, share stories, and create memories that will last a lifetime. Our expert guides will share fascinating tales about the city’s history, from its humble beginnings to becoming the cultural and economic powerhouse it is today.\r\n"
                		+ "\r\n"
                		+ "Whether you’re visiting for the first time or are a seasoned traveler, our City Lights Tour offers an exciting and immersive experience that highlights the city's beauty, energy, and spirit after dark.\"";
                break;
            case "Desert Glamping":
                explanation = "\"Escape to the desert for a luxurious glamping experience under the stars. Our Desert Glamping offers an unparalleled opportunity to reconnect with nature while enjoying the comforts of a five-star resort. Imagine a night beneath the vast desert sky, surrounded by serene dunes and the sound of the wind whispering through the sands.\r\n"
                		+ "\r\n"
                		+ "Our exclusive glamping sites are designed to blend modern luxury with the traditional beauty of the desert. Each tent is fully equipped with plush bedding, elegant decor, and all the amenities you need for a comfortable stay. Large windows provide stunning views of the desert landscape, allowing you to wake up to a breathtaking sunrise and fall asleep under a blanket of stars.\r\n"
                		+ "\r\n"
                		+ "During the day, explore the endless golden sands on camelback or take a thrilling 4x4 ride across the dunes. For those seeking relaxation, enjoy a traditional spa treatment, followed by a gourmet desert dinner prepared by world-class chefs. Our specially curated menus feature delicious regional cuisine made from the finest ingredients, offering a true taste of the desert.\r\n"
                		+ "\r\n"
                		+ "As night falls, gather around a cozy campfire and listen to captivating stories from local Bedouins, or stargaze with expert guides who will point out constellations and share the rich history of the desert. For those seeking adventure, embark on a night safari to witness the desert’s wildlife in its natural habitat.\r\n"
                		+ "\r\n"
                		+ "Whether you’re looking to unwind, explore, or embark on an adventure, our Desert Glamping experience promises a unique and unforgettable escape from the ordinary.\"\r\n"
                		+ "\r\n"
                		+ "";
                break;
            case "Hotels":
                explanation = "\"Indulge in comfort and elegance at our handpicked selection of luxurious hotels, where every detail is designed to offer you an unforgettable stay. Whether you’re looking for a romantic getaway, a family vacation, or a solo retreat, our luxury hotels provide the perfect setting for your perfect escape.\r\n"
                		+ "\r\n"
                		+ "From opulent five-star resorts to boutique hotels with unique character, our curated collection offers a variety of accommodations that cater to every taste and preference. Each hotel boasts world-class amenities, including spacious rooms with breathtaking views, private pools, gourmet dining options, and rejuvenating spa services. Whether you’re lounging by the poolside, enjoying a relaxing massage, or savoring exquisite international cuisine, you'll experience unparalleled comfort at every turn.\r\n"
                		+ "\r\n"
                		+ "Our luxury hotels also offer exclusive experiences, such as private guided tours of local landmarks, wine tastings, and personalized concierge services that ensure your every need is met. Take in stunning panoramic views from your room, enjoy sunset cocktails on the rooftop terrace, or experience the local culture with curated activities designed to enhance your stay.\r\n"
                		+ "\r\n"
                		+ "For those seeking an added touch of elegance, many of our luxury hotels feature exquisite architectural designs, featuring opulent interiors, lush gardens, and unparalleled service. Whether nestled in the heart of vibrant cities or set against serene natural landscapes, our hotels are your gateway to luxury, sophistication, and relaxation.\r\n"
                		+ "\r\n"
                		+ "Book your stay today and let us treat you to an unforgettable hotel experience where luxury meets comfort in every detail.\"";
                break;
            default:
                explanation = "No explanation available.";
                break;
        }

        model.addAttribute("destination", destination);
        model.addAttribute("explanation", explanation);

        return "viewExplanation";  // Return the view name (JSP file)
    }
}
