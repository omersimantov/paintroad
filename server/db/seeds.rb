# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Painting.destroy_all

# Seed the database with demo data for the demo app
data = [
  {
    name: "Blooming with Memories",
    description: "Blooming with Memories by Suchitra Bhosle is a poetic ode to the passage of time, encapsulated in the delicate beauty of flowers. The canvas bursts forth with an array of blooms, each petal a testament to the enduring nature of memories and the fleeting essence of life.
    The floral composition may feature an assortment of blossoms, each species and color chosen with intention. Bhosle's brushstrokes delicately capture the intricate details of petals, from the soft unfurling buds to the graceful arcs of fully bloomed flowers. The color palette, rich and varied, evokes a sense of nostalgia and the vivid tapestry of life's experiences.
    Amidst the blooms, subtle elements may hint at the passage of time — perhaps the suggestion of a weathered vase, the play of light casting shadows that dance with memories, or the presence of a butterfly symbolizing the transient nature of life. These details weave layers of meaning into the composition.
    The title, Blooming with Memories, invites viewers to reflect on the metaphorical significance of flowers as vessels of cherished moments. Whether a celebration of joyous occasions or a memorial to times gone by, the artwork becomes a visual poem, inviting viewers to find their own personal narratives within the delicate petals and vibrant colors of this timeless floral tapestry.",
    price: 8000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/flowers.jpg",
    painter: "Suchitra Bhosle",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "Padma Mudra",
    description: "Padma Mudra by Suchitra Bhosle is a mesmerizing painting that embraces the fusion of traditional symbolism and contemporary spirit. The canvas portrays an Indian hippie girl adorned with vibrant, flowing fabrics and accessories, embodying a harmonious blend of cultural roots and free-spirited expression.
    The central focus may be on the girl's hands forming the Padma Mudra, symbolizing purity and enlightenment. Suchitra Bhosle captures the intricacies of the mudra with precision, infusing it with a sense of grace and intention.
    The backdrop could include elements that bridge the traditional and the modern — perhaps a blend of Indian motifs and psychedelic patterns that reflect the cultural crossroads embodied by the hippie movement. The color palette is a celebration of vivid hues, echoing the rich diversity of Indian traditions.
    The girl's demeanor may exude a carefree yet contemplative spirit, capturing the essence of the hippie ethos that seeks both individual freedom and spiritual connection. Bhosle's brushstrokes bring to life the textures of fabrics and the play of light on the girl's features, creating a visual feast that invites viewers to appreciate the beauty of cultural synthesis and personal expression in this captivating artwork.",
    price: 19000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/padma-mudra.jpg",
    painter: "Suchitra Bhosle",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "Emotion",
    description: "Emotion by Suchitra Bhosle is a captivating exploration of the human experience through the expressive visage of a man. The canvas comes alive with the artist's nuanced brushstrokes, skillfully capturing the intricate play of emotions etched across the subject's face.
    The central focus is on the man's eyes and facial features, where Bhosle expertly conveys a spectrum of emotions — perhaps a subtle mix of introspection, resilience, and a hint of vulnerability. The play of light and shadow enhances the depth of emotion, casting gentle highlights on furrowed brows and accentuating the contours of the face.
    The color palette is carefully chosen to evoke the mood of the painting. Subdued earth tones and cool grays create a contemplative atmosphere, while strategic pops of warm hues draw attention to the areas where emotion is most palpable.
    Bhosle's attention to detail extends beyond the facial features, incorporating subtle elements that add layers to the narrative. Whether it's a suggestion of wind in the tousled hair or the faint lines that hint at the passage of time, each detail contributes to the overall richness of the composition.
    Emotion invites viewers to delve into the complexity of the human soul, offering a moment of connection and introspection. Suchitra Bhosle's masterful portrayal of emotion transcends the canvas, creating a timeless and relatable portrayal that resonates with the shared experiences of the human condition.",
    price: 17000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/emotion.jpg",
    painter: "Suchitra Bhosle",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "A Pretty Girl",
    description: "A Pretty Girl by Pramod Kurlekar is an enchanting portrayal of feminine grace and beauty. The canvas unfolds into a vision of elegance, where the artist captures the essence of a captivating young woman with a thoughtful blend of realism and artistic flair.
    The subject, adorned in colors that harmonize with the surrounding palette, exudes a timeless charm. Kurlekar's attention to detail brings forth the intricacies of expression, whether it's a playful smile, a contemplative gaze, or the subtle play of light on delicate features.
    The background may be a subtle interplay of hues that complements and accentuates the subject, drawing attention to the captivating presence of the pretty girl. The artist's use of brushstrokes and color gradients creates a sense of depth, adding to the overall allure of the composition.
    Whether situated in a dreamlike setting or against a backdrop of everyday life, A Pretty Girl invites viewers to appreciate the aesthetic beauty and individuality of the subject. Kurlekar's artistic interpretation captures not only the external grace of the girl but also hints at the depth of her personality, leaving room for viewers to engage in their own interpretations and connections with the artwork.",
    price: 20000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/girl.jpeg",
    painter: "Pramod Kurlekar",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "His Nurturer",
    description: "His Nurturer by Pramod Kurlekar is a poignant exploration of the tender and symbiotic relationship between humans and nature. The canvas unveils a scene where a figure, perhaps a farmer or caretaker, is intimately connected with the natural world around them.
    The central focus is on the nurturing gesture, as the figure cradles a seedling or sapling in their hands. Kurlekar skillfully captures the delicate balance between strength and gentleness, emphasizing the human role in fostering the growth of the natural world.
    The background may feature a lush landscape or garden, portraying the richness of the earth and the life it sustains. The color palette is harmonious, with earthy tones and vibrant greens that symbolize the cycle of life and growth.
    The artist's brushstrokes convey a sense of harmony and unity, highlighting the interconnectedness of humanity and nature. Whether through the careful tending of a garden or the act of planting, His Nurturer becomes a celebration of the profound connection between the caretaker and the environment they nurture.
    This artwork invites viewers to reflect on the reciprocal relationship we share with the natural world, emphasizing the responsibility and beauty inherent in the act of nurturing and sustaining life. His Nurturer stands as a testament to the timeless dance between humankind and the environment that shapes our existence.",
    price: 30000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/nurturer.jpeg",
    painter: "Pramod Kurlekar",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "A Day at Work",
    description: "A Day at Work by Pramod Kurlekar is a delightful portrayal of two goats engaged in their daily activities, creating a charming and whimsical scene. The canvas comes alive with the artist's playful strokes, capturing the unique personalities of the goats as they navigate their rustic environment.
    The composition centers around the two goats, each depicted with distinctive features that reflect their character. Whether one is contentedly grazing on a patch of greenery or the other is engaged in a playful interaction, Kurlekar's attention to detail imbues the scene with a sense of liveliness and camaraderie.
    The backdrop may include a rustic barn or a pastoral landscape, setting the stage for the goats' daily adventures. The use of warm, earthy tones contributes to the cozy and inviting atmosphere, inviting viewers to immerse themselves in the simple yet charming world of these endearing animals.
    Through A Day at Work, Pramod Kurlekar invites viewers to appreciate the beauty of the mundane and find joy in the simple moments of life. The painting becomes a celebration of the playful spirit and quiet charm of these two goats as they navigate their daily routine, creating a heartwarming narrative that resonates with both nature lovers and those seeking a moment of whimsy in their day.",
    price: 11000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/goats.jpeg",
    painter: "Pramod Kurlekar",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "Wilderness",
    description: "Sahil Lavingia's Wilderness transports viewers to a serene and untouched natural realm, where the artist skillfully captures the raw beauty of a rugged rock passage nestled within nature's embrace. The focal point of the painting is a captivating rock formation that weaves through the composition, leading the eye on a visual journey through the untamed wilderness.
    Lavingia's mastery of texture and color brings the rocky surfaces to life, with the play of light and shadow accentuating the natural contours. The artist employs a rich palette that reflects the diverse hues found in nature, from earthy browns and greens to the subtle interplay of sunlight filtering through the foliage.
    At the top right of the canvas, a majestic tree stands tall and proud, its branches extending into the canvas like a guardian overlooking the wilderness. The tree adds a vertical element to the composition, enhancing the sense of scale and emphasizing the grandeur of the natural environment. The details of the leaves and branches showcase Lavingia's attention to botanical accuracy, creating a harmonious balance between the organic forms and the rugged rocks.
    The rocky passage, framed by the steadfast tree, beckons viewers to immerse themselves in the tranquility of the wild. The absence of human presence allows for an unspoiled connection with nature, inviting contemplation and a sense of awe at the beauty of the untamed landscape.
    In Wilderness, Sahil Lavingia encapsulates the essence of nature's majesty, offering viewers a glimpse into a secluded realm where the rock passage and the resilient tree stand as silent witnesses to the timeless beauty of the wild.",
    price: 15000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/rocks.png",
    painter: "Sahil Lavingia",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "Burbank Train Station",
    description: "Burbank Train Station by Sahil Lavingia is a captivating portrayal of urban life, skillfully capturing the intersection of nostalgia, movement, and architectural beauty. The canvas unfolds with a meticulous attention to detail, offering a glimpse into the enchanting world of a bustling train station.
    Lavingia's composition invites viewers to step into the scene, where the hustle and bustle of daily life at the Burbank Train Station come to life. The architectural elements are rendered with precision, from the ornate detailing of the station's facade to the rhythmic repetition of windows and arches. The artist's keen eye for perspective draws the viewer into the depth of the scene, creating a sense of immersion in the urban landscape.
    The play of light and shadow is a striking feature of this artwork, as sunlight dances on the platform, casting dynamic patterns that breathe life into the painting. The warmth of the sunlight contrasts with the cool tones of the shadows, creating a visual symphony that adds depth and dimension to the composition.
    The figures on the platform, waiting or in motion, are rendered with a sense of anonymity, allowing viewers to project their own experiences onto the scene. Each individual becomes a part of a larger narrative, contributing to the ebb and flow of daily life at the station. Lavingia's choice of muted tones for the figures enhances the sense of timelessness, as if the scene could belong to any era.
    Burbank Train Station not only captures the external beauty of the architecture and the transient nature of human movement but also invites contemplation on the passage of time and the stories woven into the fabric of this urban tapestry. Sahil Lavingia's masterful brushstrokes and thoughtful composition make this artwork a poignant reflection on the intersection of architecture, humanity, and the inexorable march of time.",
    price: 10000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/painting.jpeg",
    painter: "Sahil Lavingia",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
  {
    name: "Telling Eyes",
    description: "Telling Eyes by Sahil Lavingia unfolds a narrative that extends beyond the captivating gaze of the young girl, now enriched with details that add layers to the composition. The artist has delicately adorned her with a special necklace, a distinctive feature that draws attention and invites contemplation.
    The necklace, a focal point in itself, serves as a symbolic element, suggesting a personal connection or a cherished memory. Its details are rendered with care, and the interplay of light and shadows adds a touch of elegance to the overall portrayal. Viewers are prompted to imagine the story behind this unique accessory, deepening their connection with the subject.
    Further enhancing the character of the young girl, Lavingia has styled her hair in a bun shape. The intricate details of the bun showcase the artist's mastery in capturing the subtle textures and forms, adding a sense of sophistication to the composition. The bun, combined with the captivating smile and telling eyes, creates a harmonious balance that reflects both youthfulness and a hint of maturity.
    In Telling Eyes, the artist successfully intertwines visual elements to create a harmonious and evocative scene. The special necklace and the carefully crafted bun not only contribute to the aesthetic appeal but also invite viewers to imagine the rich tapestry of the girl's life, making the painting a poignant exploration of beauty and narrative.",
    price: 25000,
    image_url: "https://paintroad.s3.us-east-1.amazonaws.com/bhosle.jpeg",
    painter: "Sahil Lavingia",
    order_link: "https://checkout.stripe.com/c/pay/cs_test_b1v92MrnmWtR0FHiXGrNeDXVehPB3krlavr29mkLor6yWVHJnNtFtg3oWs?demoWallet=applePay&demoPolicies=false#fidkdWxOYHwnPyd1blpxYHZxWjA0TUM1Yl9GT1c0a25sZjdSa2ppakZgQzdxVz1qYk9pcUBnNTc9Z11kVnc9b0F%2FREgxfE5oQ31Dd2dGME9sQVx2Tm1wc3RyRGhPZjIwTzRLYmd3TnJDSjJMNTVJMUBtbWNMQycpJ2N3amhWYHdzYHcnP3F3cGApJ2lkfGpwcVF8dWAnPydocGlxbFpscWBoJyknYGtkZ2lgVWlkZmBtamlhYHd2Jz9xd3BgeCUl",
  },
]

data.each do |painting_data|
  Painting.create(painting_data)
end

puts 'Database seeded'