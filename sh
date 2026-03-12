<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>إلى شروق ❤️</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: "Tahoma", sans-serif;
    }

    body {
      min-height: 100vh;
      overflow: hidden;
      background: linear-gradient(135deg, #2b0a1f, #5b1535, #a8325f);
      display: flex;
      justify-content: center;
      align-items: center;
      position: relative;
      color: white;
    }

    .overlay {
      position: absolute;
      inset: 0;
      background: radial-gradient(circle at top, rgba(255,255,255,0.08), transparent 40%);
      pointer-events: none;
    }

    .container {
      width: 90%;
      max-width: 760px;
      padding: 40px 30px;
      border-radius: 28px;
      background: rgba(255, 255, 255, 0.12);
      backdrop-filter: blur(14px);
      -webkit-backdrop-filter: blur(14px);
      box-shadow: 0 12px 50px rgba(0, 0, 0, 0.35);
      text-align: center;
      z-index: 2;
      animation: fadeUp 1.8s ease;
      border: 1px solid rgba(255,255,255,0.18);
    }

    .title {
      font-size: 2.8rem;
      margin-bottom: 15px;
      color: #ffd7e6;
      text-shadow: 0 0 20px rgba(255, 180, 210, 0.35);
    }

    .subtitle {
      font-size: 1.2rem;
      line-height: 2;
      color: #fff5f8;
      margin-bottom: 28px;
    }

    .name {
      color: #ffbfd5;
      font-weight: bold;
      font-size: 1.4rem;
    }

    .message-box {
      margin-top: 20px;
      padding: 25px;
      border-radius: 22px;
      background: rgba(255, 255, 255, 0.08);
      line-height: 2.2;
      font-size: 1.15rem;
      color: #fff;
      box-shadow: inset 0 0 25px rgba(255,255,255,0.05);
    }

    .btn {
      margin-top: 28px;
      padding: 14px 28px;
      border: none;
      border-radius: 999px;
      background: linear-gradient(135deg, #ff5c8a, #ff8ab0);
      color: white;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.3s ease;
      box-shadow: 0 10px 25px rgba(255, 92, 138, 0.35);
    }

    .btn:hover {
      transform: scale(1.06);
      box-shadow: 0 12px 30px rgba(255, 92, 138, 0.5);
    }

    .hidden-message {
      margin-top: 22px;
      font-size: 1.15rem;
      color: #ffe4ee;
      opacity: 0;
      transform: translateY(10px);
      transition: 0.6s ease;
      min-height: 35px;
    }

    .hidden-message.show {
      opacity: 1;
      transform: translateY(0);
    }

    .signature {
      margin-top: 22px;
      font-size: 1rem;
      color: #ffdbe8;
      opacity: 0.9;
    }

    .heart {
      position: absolute;
      bottom: -30px;
      color: rgba(255, 210, 225, 0.85);
      animation: floatHeart linear infinite;
      user-select: none;
      z-index: 1;
    }

    .glow {
      position: absolute;
      width: 220px;
      height: 220px;
      border-radius: 50%;
      background: rgba(255, 182, 193, 0.12);
      filter: blur(50px);
      z-index: 0;
      animation: pulse 5s infinite ease-in-out;
    }

    .glow.one {
      top: 10%;
      left: 10%;
    }

    .glow.two {
      bottom: 8%;
      right: 12%;
      animation-delay: 1.5s;
    }

    @keyframes fadeUp {
      from {
        opacity: 0;
        transform: translateY(30px);
      }
      to {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes floatHeart {
      0% {
        transform: translateY(0) scale(1);
        opacity: 0;
      }
      10% {
        opacity: 1;
      }
      100% {
        transform: translateY(-115vh) scale(1.4);
        opacity: 0;
      }
    }

    @keyframes pulse {
      0%, 100% {
        transform: scale(1);
        opacity: 0.5;
      }
      50% {
        transform: scale(1.2);
        opacity: 0.8;
      }
    }

    @media (max-width: 600px) {
      .title {
        font-size: 2.1rem;
      }

      .subtitle,
      .message-box,
      .hidden-message {
        font-size: 1rem;
      }

      .container {
        padding: 30px 20px;
      }
    }
  </style>
</head>
<body>
  <div class="glow one"></div>
  <div class="glow two"></div>
  <div class="overlay"></div>

  <div class="container">
    <h1 class="title">إلى شروق ❤️</h1>
    <p class="subtitle">
‎      هذه الصفحة صنعت بكل حب إلى <span class="name">شروق</span>،  
‎      لأن بعض الأسماء لا تُكتب فقط... بل تُحَسّ بالقلب.
    </p>

    <div class="message-box">
‎      يا شروق،  
‎      أنتِ النور حين يهدأ العالم،  
‎      وأنتِ الجمال حين تعجز الكلمات،  
‎      وأنتِ الحكاية الأجمل التي يسعد القلب أن يرويها كل يوم.  
‎      وجودكِ مختلف، واسمكِ مختلف، وكل شيء فيكِ له أثر جميل لا يُنسى.
    </div>

    <button class="btn" onclick="showLoveMessage()">اضغطي هنا ✨</button>
    <div class="hidden-message" id="loveMessage"></div>

    <div class="signature">
‎      بكل الحب... لمن تستحق كل الجمال 🌹
    </div>
  </div>

  <script>
    const messages = [
‎      "شروق... أنتِ أجمل صدفة وألطف نعمة في القلب ❤️",
‎      "وجودكِ يمر على الروح كأنه وردٌ ودعاء 🌸",
‎      "في كل مرة يُذكر فيها اسمكِ... يبتسم القلب ✨",
‎      "أنتِ لستِ مجرد اسم... أنتِ شعور جميل لا ينتهي 💖",
‎      "شروق، يكفي أنكِ شروق... وهذا وحده يختصر كل الجمال 🌷"
    ];

    function showLoveMessage() {
      const box = document.getElementById("loveMessage");
      const randomMessage = messages[Math.floor(Math.random() * messages.length)];
      box.textContent = randomMessage;
      box.classList.add("show");
    }

    function createHeart() {
      const heart = document.createElement("div");
      heart.classList.add("heart");
      heart.innerHTML = "❤";
      heart.style.left = Math.random() * 100 + "vw";
      heart.style.fontSize = (Math.random() * 18 + 16) + "px";
      heart.style.animationDuration = (Math.random() * 4 + 5) + "s";
      document.body.appendChild(heart);

      setTimeout(() => {
        heart.remove();
      }, 9000);
    }

    setInterval(createHeart, 350);
  </script>
</body>
</html>
