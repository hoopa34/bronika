'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"assets/AssetManifest.bin": "a911caa87ea442fe681d702f0e145956",
"assets/AssetManifest.bin.json": "20bb25dd5d8dcf715d7c6c084de0cf9d",
"assets/AssetManifest.json": "36e4622fccc764a29fb9514d3b30a389",
"assets/assets/images/1%2520(1).jpg": "a69c6f8539947d5209b8e69df0d05a0c",
"assets/assets/images/1%2520(1).png": "523ac169f6e33e6af2915d9523dc6c68",
"assets/assets/images/1%2520(2).jpg": "3775a2caaa1ce6e9cd2abb7e6bbbab4b",
"assets/assets/images/10%2520(1).jpg": "4e814a5732573d1e9896a4a62bc0aa55",
"assets/assets/images/10%2520(2).jpg": "793aed69bf4793e502b8a31a5b08c1e8",
"assets/assets/images/10%2520(3).jpg": "cb8bb1200bcddbbf2a4ada86420f2cfc",
"assets/assets/images/2%2520(1).jpg": "41bc18cf011dcc404eff0ec7ef0a3b45",
"assets/assets/images/2%2520(1).webp": "19e6d9e822b660f97cd196ed08cd9c20",
"assets/assets/images/2%2520(2).webp": "99cbc184e1e67c650d1c3f833738b060",
"assets/assets/images/3%2520(1).jpg": "7e8c5cbdf0d6dd3ba4ed0e6c40e4a993",
"assets/assets/images/3%2520(1).webp": "eded1a4181ec9342a0e271d6d56446ce",
"assets/assets/images/3%2520(2).webp": "f3eb831e849a4caf6d42b025bc3bac7a",
"assets/assets/images/4%2520(1).jpg": "c94c94272398915e53b92b02b5b1a32f",
"assets/assets/images/4%2520(2).jpg": "008c37f8d890686ec1516894d2354cf8",
"assets/assets/images/4.jpg": "6cdc4124003b3321c041a349bf8447f6",
"assets/assets/images/5%2520(1).jpg": "890f04cf9257dcd4a7275d240715efce",
"assets/assets/images/5%2520(2).jpg": "ef4623d9acaa871fad4adeeb1647f267",
"assets/assets/images/5%2520(3).jpg": "7be5d492b1a86194462ccd0b53540d6a",
"assets/assets/images/5%2520(4).jpg": "6cdc4124003b3321c041a349bf8447f6",
"assets/assets/images/6%2520(1).jpg": "3128f92e3b4d870802a19bf4bc52ee68",
"assets/assets/images/6%2520(1).webp": "d285e746b8cf3ddb5ee79ec724877c19",
"assets/assets/images/6%2520(2).webp": "9d39cb8f62b3f3c203621cce2fd3f0e4",
"assets/assets/images/7%2520(1).jpg": "6b1c436b1eeb2b939923fdbdb5c06c24",
"assets/assets/images/7%2520(2).jpg": "c4a5f5bc50ccaaec65097fd03de63ad8",
"assets/assets/images/7%2520(3).jpg": "096e476dade748f82471e54e91aa227c",
"assets/assets/images/8%2520(1).jpg": "17c974f1ca5e62348b15e318c6453ad6",
"assets/assets/images/8%2520(2).jpg": "1c943f0496f637c5496f0bd6e89b62f6",
"assets/assets/images/8%2520(3).jpg": "b331011a4db65cc43f314e9cf67b64a4",
"assets/assets/images/9%2520(1).jpg": "219dec4bfa564c0de0c9184e02a185f1",
"assets/assets/images/9%2520(1).png": "6667950353555941c9d93ce0e7826218",
"assets/assets/images/9%2520(2).png": "12a437d1c9526c64fba41c23d5a0d382",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/fonts/MaterialIcons-Regular.otf": "21c1b41b866a66e7f9e026e6e92a141a",
"assets/NOTICES": "a5010f47dc02885e84eaf4105726d933",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "33b7d9392238c04c131b6ce224e13711",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"canvaskit/canvaskit.js": "728b2d477d9b8c14593d4f9b82b484f3",
"canvaskit/canvaskit.js.symbols": "bdcd3835edf8586b6d6edfce8749fb77",
"canvaskit/canvaskit.wasm": "7a3f4ae7d65fc1de6a6e7ddd3224bc93",
"canvaskit/chromium/canvaskit.js": "8191e843020c832c9cf8852a4b909d4c",
"canvaskit/chromium/canvaskit.js.symbols": "b61b5f4673c9698029fa0a746a9ad581",
"canvaskit/chromium/canvaskit.wasm": "f504de372e31c8031018a9ec0a9ef5f0",
"canvaskit/skwasm.js": "ea559890a088fe28b4ddf70e17e60052",
"canvaskit/skwasm.js.symbols": "e72c79950c8a8483d826a7f0560573a1",
"canvaskit/skwasm.wasm": "39dd80367a4e71582d234948adc521c0",
"favicon.png": "5dcef449791fa27946b3d35ad8803796",
"flutter.js": "83d881c1dbb6d6bcd6b42e274605b69c",
"flutter_bootstrap.js": "2dca122fe70feecb1027bfedca711ad1",
"icons/Icon-192.png": "ac9a721a12bbc803b44f645561ecb1e1",
"icons/Icon-512.png": "96e752610906ba2a93c65f8abe1645f1",
"icons/Icon-maskable-192.png": "c457ef57daa1d16f64b27b786ec2ea3c",
"icons/Icon-maskable-512.png": "301a7604d45b3e739efc881eb04896ea",
"index.html": "bb2eefd7fa7c2dc096ca20a01b5d885b",
"/": "bb2eefd7fa7c2dc096ca20a01b5d885b",
"main.dart.js": "04bcc9083f23c4d39c22cf73144bcc40",
"manifest.json": "be282355220e739c4255153e9f471ae8",
"version.json": "b1e57c30d4ecc089c6fcc9177e3e14dd"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
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
