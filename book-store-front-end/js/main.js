const app = Vue.createApp({
  created() {
    fetch("http://localhost:8000/books")
      .then((response) => response.json())
      .then((data) => {
        // console.log(data);
        this.booksData = data;
        this.loadingBooks = false;
      })
      .catch((error) => console.log(error));
  },
  data() {
    return {
      booksData: [],
      name: "",
      published_date: "",
      bio: "",
      image: "",
      error: "",
      loadingBooks: true,
      loading: false,
    };
  },
  methods: {
    getBook(id) {
      this.loading = true;
      //   console.log(id);
      fetch(`http://localhost:8000/books/${id}`)
        .then((response) => response.json())
        .then((data) => {
          this.loading = false;
          if (data.length > 0) {
            const bookData = data[0];
            this.name = bookData.name ? bookData.name : "Not Available";
            this.published_date = bookData.published_date
              ? bookData.published_date
              : "Published Date Not Available";
            this.bio = bookData.bio ? bookData.bio : "Biography Not Available";
            this.image = bookData.book_image
              ? bookData.book_image
              : "Image Not Available";
          } else {
            this.error = "Book not found.";
          }
        })
        .then(
          document.documentElement.scrollIntoView({
            behavior: "smooth",
            block: "end",
          })
        )
        .catch((error) => console.log(error));
    },
  },
}).mount("#app");
