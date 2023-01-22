import flatpickr from "flatpickr";

const loadFlatpickr = () => {
  //console.log("Hello brice");
  const list = document.querySelector(".results")
  flatpickr(list, {});
}
export { loadFlatpickr };
