// Arguments are a baseCurrency string and a rates object
const selectCurrency = (baseCurrency, rates) => {
  return {
    type: "SWITCH_CURRENCY",
    baseCurrency: baseCurrency,
    rates: rates
  };
};

// window.selectCurrency = selectCurrency;

export default selectCurrency;
