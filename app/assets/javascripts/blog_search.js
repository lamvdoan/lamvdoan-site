document.addEventListener("turbolinks:load", function () {
  const form = document.querySelector("[data-blog-search]");
  const results = document.getElementById("blog-search-results");
  if (!form || !results) return;

  const field = form.elements.q;
  const status = form.querySelector("[data-blog-search-status]");
  const initialResults = results.innerHTML;
  let timeout;
  let request;

  function cancelSearch() {
    clearTimeout(timeout);
    if (request) request.abort();
  }

  function search() {
    const url = new URL(form.action);
    const query = field.value.trim();
    if (query) url.searchParams.set("q", query);

    const controller = new AbortController();
    request = controller;

    fetch(url, { signal: controller.signal })
      .then(function (response) {
        if (!response.ok) throw new Error("Blog search failed");
        return response.text();
      })
      .then(function (html) {
        if (controller.signal.aborted) return;

        const page = new DOMParser().parseFromString(html, "text/html");
        const nextResults = page.getElementById(results.id);
        if (!nextResults) throw new Error("Blog search results are missing");

        results.innerHTML = nextResults.innerHTML;
      })
      .catch(function () {
        if (!controller.signal.aborted) {
          status.textContent = "Live search is unavailable. Press Enter to search.";
        }
      });
  }

  function queueSearch(event) {
    cancelSearch();
    status.textContent = "";
    if (!event.isComposing) timeout = setTimeout(search, 180);
  }

  field.addEventListener("input", queueSearch);
  field.addEventListener("compositionend", queueSearch);

  form.querySelector("[data-blog-search-clear]").addEventListener("click", function () {
    field.value = "";
    field.focus();
    field.dispatchEvent(new Event("input"));
  });

  document.addEventListener("turbolinks:before-cache", function () {
    cancelSearch();
    field.value = field.defaultValue;
    results.innerHTML = initialResults;
    status.textContent = "";
  }, { once: true });
});
