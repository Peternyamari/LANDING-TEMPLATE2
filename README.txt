10 Labs Rentals — Demo Website
================================

Overview
--------
Classic, clean demo site for a rental apartments business. Built to showcase design and development skills using semantic HTML, modern CSS, and vanilla JavaScript (no frameworks, no external libraries).

Pages
-----
1) index.html — Landing page with hero, about, and a listings grid of 3 sample apartments.
2) property.html — Property details template that loads content based on the URL query parameter id=1|2|3.
3) contact.html — Contact form that captures the user’s name and optionally the property id.
4) thankyou.html — Confirmation page that greets the user by name from localStorage.

How to Run Locally
------------------
No build step required. Just open index.html in a browser:
 - On Windows: double-click index.html
 - Or drag index.html into your browser window
 - Optional: run the image scaffolding script (ksh) if you need to re-create placeholders
   - On macOS/Linux with ksh installed: ksh setup_images.ksh
   - On Windows (WSL): ksh setup_images.ksh

Design System
-------------
 - Layout: centered max-width container (1100px) with generous spacing
 - Colors: navy (#0b2340), gold (#c79a2b), off-white (#fbfbfa), light gray (#f2f4f6)
 - Typography: Georgia for headings, system-ui sans for body
 - Style: professional, classic, trustworthy; hover states and smooth scrolling
 - Responsive: single-column layout below 760px

Property Data (property.html)
-----------------------------
property.html reads the id query parameter — for example:
 - property.html?id=1
 - property.html?id=2
 - property.html?id=3

The page contains an inline JavaScript object with three sample properties. When loaded, the script:
 - Parses the id from window.location.search
 - Selects the corresponding property from the object
 - Injects the title, location, description, amenities, and price into the DOM
 - Sets the hero image to an inline SVG placeholder
 - Sets the "Book Viewing" button to contact.html?id=<id>

Contact Flow (contact.html → thankyou.html)
------------------------------------------
 - contact.html includes a form with Full Name, Email, Phone, Preferred Date, and Message
 - If a property id is present in the URL (e.g., contact.html?id=2), it is stored in a hidden input and shown as context text on the page
 - On submit, default is prevented, the user’s name is saved to localStorage under the key "contactName", and the browser is redirected to thankyou.html
 - thankyou.html retrieves contactName from localStorage and renders: "Thank you, [Name] — your request has been received."

Smooth Scrolling and Micro-interactions
---------------------------------------
 - index.html implements smooth scrolling for anchor links (e.g., "View Listings")
 - Listing cards display a brief tooltip on hover, reinforcing responsiveness and attention to detail

Replacing Placeholders
----------------------
Images:
 - All placeholder images live in the images/ folder: property-1.svg, property-2.svg, property-3.svg, avatar-1.svg, avatar-2.svg
 - Replace these SVGs with real images while keeping the same filenames to avoid changing HTML
 - Alternatively, update the src attribute in index.html and property.html to point to your new files (e.g., images/elm-on-park.jpg)
 - Keep the class names (e.g., class="media") to preserve styling

Copy:
 - Update property titles, descriptions, amenities, and prices in the PROPERTIES object in property.html
 - Adjust landing page hero and about copy directly in index.html

Brochure Links:
 - In property.html, update the "brochure" field for each property to point to a real PDF (e.g., brochures/elm-on-park.pdf). The Download Brochure button uses the HTML download attribute.

Notes
-----
 - No external libraries or frameworks are used
 - All CSS is inline to each HTML file; JavaScript is vanilla and inline
 - Tested on current versions of Chrome and Edge
  - A helper script setup_images.ksh is provided to scaffold image placeholders if needed


