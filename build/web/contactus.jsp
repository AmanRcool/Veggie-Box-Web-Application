<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Veggie Box</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="style.css">
    <style>
        body {
    background-color: #e6f4ea; /* soft leafy green */


        }
        .navbar {
            background-color: #28a745;
        }
        .navbar a {
            color: white;
        }
        .footer {
            background-color: #28a745;
            color: white;
            padding: 20px 0;
        }
        .banner {
            margin-bottom: 20px;
        }
        .content {
            background-color: white;
            padding: 30px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .form-control:focus {
            border-color: #28a745;
            box-shadow: 0 0 5px rgba(40, 167, 69, 0.5);
        }
        .btn-primary {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-primary:hover {
            background-color: #218838;
            border-color: #1e7e34;
        }
        .contact-section {
  width: 100%;
  max-width: 40rem;
  margin-left: auto;
  margin-right: auto;
  padding: 3rem 1rem;
}

.contact-intro > * + * {
  margin-top: 1rem;
}

.contact-title {
  font-size: 1.875rem;
  line-height: 2.25rem;
  font-weight: 700;
}

.contact-description {
  color: rgb(107 114 128);
}

.form-group-container {
  display: grid;
  gap: 1rem;
  margin-top: 2rem;
}

.form-group {
  display: flex;
  flex-direction: column;
}

.form-label {
  margin-bottom: 0.5rem;
}

.form-input,
.form-textarea {
  padding: 0.5rem;
  border: 1px solid #e5e7eb;
  display: flex;
  height: 2.5rem;
  width: 100%;
  border-radius: 0.375rem;
  font-size: 0.875rem;
  line-height: 1.25rem;
}

.form-input::placeholder,
.form-textarea:focus-visible {
  color: #6b7280;
}

.form-input:focus-visible,
.form-textarea:focus-visible {
  outline: 2px solid #2563eb;
  outline-offset: 2px;
}

.form-textarea {
  min-height: 120px;
}

.form-submit {
  width: 100%;
  margin-top: 1.2rem;
  background-color: #3124ca;
  color: #fff;
  padding: 13px 5px;
  border-radius: 0.375rem;
}

    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <a class="navbar-brand" href="index.jsp">Veggie Box</a>
        <div class="collapse navbar-collapse">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="aboutus.jsp">About Us</a></li>
                <li class="nav-item"><a class="nav-link" href="registration.jsp">Registration</a></li>
                <li class="nav-item"><a class="nav-link" href="contactus.jsp">Contact Us</a></li>
            </ul>
        </div>
    </nav>

    <div class="container mt-4">
        <div class="row">
            <div class="col-12 text-center banner">
                <img src="images/banner.png" class="img-fluid" alt="Veggie Box Banner">
            </div>
        </div>
       
<section class="contact-section">
  <div class="contact-intro">
    <h2 class="contact-title">Get in Touch</h2>
    <p class="contact-description">
      Fill out the form below and we'll get back to you as soon as possible.
    </p>
  </div>

  <form class="contact-form" action="https://api.web3forms.com/submit" method="POST">

    <input type="hidden" name="access_key" value="7ea53471-ed0c-4630-9ea7-132f7fca787a" />
    <input type="hidden" name="subject" value="New Contact Form Submission from Web3Forms" />
    <input type="hidden" name="from_name" value="My Website" />
    <!-- More custom ization options available in the docs: https://docs.web3forms.com -->

    <div class="form-group-container">
      <div class="form-group">
        <label for="name" class="form-label">Name</label>
        <input id="name" name="name" class="form-input" placeholder="Your name" type="text" />
      </div>
      <div class="form-group">
        <label for="email" class="form-label">Email</label>
        <input id="email" name="email" class="form-input" placeholder="Your email" type="email" />
      </div>
      <div class="form-group">
        <label for="phone" class="form-label">Phone</label>
        <input id="phone" name="phone" class="form-input" placeholder="+919999999999" type="text" />
      </div>
      <div class="form-group">
        <label for="message" class="form-label">Message</label>
        <textarea class="form-textarea" id="message" name="message" placeholder="Your message"></textarea>
      </div>
    </div>
    <button class="form-submit" type="submit">Send Message</button>
  </form>

</section>
    </div>

    <footer class="footer text-center">
        <div class="container">
            <span>Copyright &copy; Reserved to Veggie Box</span><br>
            <span></span>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>