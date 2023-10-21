'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "be8ba959ebe1901ca70b291347fcd6d9",
"index.html": "50e4eac84e480c2b88ec883c134a2461",
"/": "50e4eac84e480c2b88ec883c134a2461",
"main.dart.js": "58a318b295c3228482e9072cc8b1d1a4",
"flutter.js": "6fef97aeca90b426343ba6c5c9dc5d4a",
"favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-192.png": "d41d8cd98f00b204e9800998ecf8427e",
"icons/Icon-512.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/AssetManifest.json": "61d50d4fc649a0ecb49906b731698d55",
"assets/NOTICES": "2c1bea5e4ae40cd38899e589303611de",
"assets/FontManifest.json": "ec61f0e88e782d466bdaab8df57700b1",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "89ed8f4e49bcdfc0b5bfc9b24591e347",
"assets/packages/font_awesome_flutter/lib/fonts/fa-solid-900.ttf": "4bc7849a5c7774cfa18e4bc2ef82404a",
"assets/packages/font_awesome_flutter/lib/fonts/fa-regular-400.ttf": "dbf0a93d2b23d99b7af4b1a6ab94e122",
"assets/packages/font_awesome_flutter/lib/fonts/fa-brands-400.ttf": "bbc3a2d2265f7ff6bef4ba339a0ba4c9",
"assets/shaders/ink_sparkle.frag": "f8b80e740d33eb157090be4e995febdf",
"assets/AssetManifest.bin": "4595b48e19a7267cafe7647224cdb8d5",
"assets/fonts/MaterialIcons-Regular.otf": "4a605f5da94f25c87a21ab9601e256e1",
"assets/assets/audios/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/rive_animations/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/images/pins/pin_3.png": "5d8284cdc4f0466d805bad0a8cf8d49e",
"assets/assets/images/pins/pin_1.png": "9772eea07abb9f1c074351d366a6def1",
"assets/assets/images/pins/pin_4.png": "32ed64903ef613235dd4b881976ccaed",
"assets/assets/images/pins/pin_5.png": "97def9992b1913e4001026abe506ed8c",
"assets/assets/images/pins/pin_7.png": "6b9da82a22e93d39079257f7d1436834",
"assets/assets/images/pins/pin_6.png": "24766adee36d1484c98842f7e94b39f9",
"assets/assets/images/pins/pin_16.png": "84fdfc3a7662f379c1eccf3a49c680b5",
"assets/assets/images/pins/pin_17.png": "2ed2af24cb23d593bb44efbadb2e5d0c",
"assets/assets/images/pins/pin_29.png": "9218e21527e0b2e3d028f60a8f0531d0",
"assets/assets/images/pins/pin_15.png": "c3fc1483a61f45a0c5da419991488937",
"assets/assets/images/pins/pin_14.png": "023d2e7834c55228db3b486919abea70",
"assets/assets/images/pins/pin_28.png": "e6c1a291fe8cef3447106590f0056cb3",
"assets/assets/images/pins/pin_10.png": "148b3eb5819989a2cf00d41c028c8194",
"assets/assets/images/pins/pin_38.png": "c28ecbfa48516cdb777f350ffc1173ef",
"assets/assets/images/pins/pin_11.png": "ca8629cb3c02d941bc641fcc678c8df9",
"assets/assets/images/pins/pin_13.png": "471ed0610c52b53d3c36d933f5eee6f5",
"assets/assets/images/pins/pin_12.png": "e6d6fef1904a54c38e1c14f836f2f54d",
"assets/assets/images/pins/pin_37.png": "44cbeaa34f8dd274d836f05ff02d5336",
"assets/assets/images/pins/pin_23.png": "da264d56b06a2282e7c64d92c3ae7b74",
"assets/assets/images/pins/pin_22.png": "2ba19c920973c091766c760070f15720",
"assets/assets/images/pins/pin_36.png": "6f31a6061eb000cec673cc5af6fd6106",
"assets/assets/images/pins/pin_20.png": "e79d9f706f845c349ebda1390cfd0e24",
"assets/assets/images/pins/pin_34.png": "e748ba7455853c701e8dd00430b6e8a5",
"assets/assets/images/pins/pin_35.png": "1bea5cf1bafbb14b1f2c582f8499a8c8",
"assets/assets/images/pins/pin_21.png": "a4c9018175bc81d0537a9c692d39ecd1",
"assets/assets/images/pins/pin_25.png": "ded278ebefe5865c0867a35686e3f396",
"assets/assets/images/pins/pin_31.png": "6ceeb884dcac6a2e45cf430ce2261e49",
"assets/assets/images/pins/pin_19.png": "2cd33dec2990714d5294f90c4abe411c",
"assets/assets/images/pins/pin_18.png": "4e60a1364ba051a9de51f8a5bb6d5d41",
"assets/assets/images/pins/pin_30.png": "1a4741b43ba745a18a903c193ddcb7f5",
"assets/assets/images/pins/pin_24.png": "1c3e72fcde13290b46e3ca889d9516ed",
"assets/assets/images/pins/pin_32.png": "6a7c870c88089f7cea195461da73da1c",
"assets/assets/images/pins/pin_26.png": "f90809f106ca7a25486d057034654f14",
"assets/assets/images/pins/pin_27.png": "9ff6c0d77218a03d65d4b7d260fefcb5",
"assets/assets/images/pins/pin_33.png": "f29c6f2a024485a9f3af6290029d1a76",
"assets/assets/images/pins/pin_8.png": "c41cb8c1365ddbedd49ca23c6153f7ae",
"assets/assets/images/pins/pin_9.png": "16e88ee6a6e5d1a7352658423e476a52",
"assets/assets/images/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/lottie_animations/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/videos/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/pdfs/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/favicon.png": "d41d8cd98f00b204e9800998ecf8427e",
"assets/assets/fonts/Biro_Script_Sloppy_Plus.otf": "c524a0f7da30a08084e25ff02bf72a18",
"canvaskit/skwasm.js": "95f16c6690f955a45b2317496983dbe9",
"canvaskit/skwasm.wasm": "d1fde2560be92c0b07ad9cf9acb10d05",
"canvaskit/chromium/canvaskit.js": "96ae916cd2d1b7320fff853ee22aebb0",
"canvaskit/chromium/canvaskit.wasm": "1165572f59d51e963a5bf9bdda61e39b",
"canvaskit/canvaskit.js": "bbf39143dfd758d8d847453b120c8ebb",
"canvaskit/canvaskit.wasm": "19d8b35640d13140fe4e6f3b8d450f04",
"canvaskit/skwasm.worker.js": "51253d3321b11ddb8d73fa8aa87d3b15"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
