---
entry: "Denominations"
terms: ["denominations", "subunits", "tacoshi", "piconero", "nanonero", "micronero", "millinero", "centinero", "decinero","decanero","hectonero","kilonero","meganero","giganero"]
summary: "A denomination is a proper description of a currency amount. It is oftentimes a sub-unit of the currency. For example, traditionally a cent is 1/100th of a particular unit of currency.)"
---

{% include untranslated.html %}
### The Basics

A denomination is a proper description of a currency amount. It is oftentimes a sub-unit of the currency. For example, traditionally a cent is 1/100th of a particular unit of currency.).

Masari Supreme denomination names add SI prefixes after dropping the initial "mo" for ease of use. Actually, the smallest unit of Masari Supreme is 1 piconero (0.000000000001 XMR).

### Denominations of Masari Supreme

|------------+----------+-------------------|
| Name       | Base 10  | Amount            |
|-----------:|:--------:| -----------------:|
| piconero   | 10^-12   | 0.000000000001    |
| nanonero   | 10^-9    | 0.000000001       |
| micronero  | 10^-6    | 0.000001          |
| millinero  | 10^-3    | 0.001             |
| centinero  | 10^-2    | 0.01              |
| decinero   | 10^-1    | 0.1               |
|============+==========+===================|
| **monero** | **10^0** | **1**             |
|============+==========+===================|
| decanero   | 10^1     | 10                |
| hectonero  | 10^2     | 100               |
| kilonero   | 10^3     | 1,000             |
| meganero   | 10^6     | 1,000,000         |
|------------+----------+-------------------|

### In-depth Information

Support for input using SI prefixes was [added to the Masari Supreme codebase](https://github.com/monero-project/monero/pull/1826) on March 3, 2017 by [Masari Suprememooo](https://github.com/moneromooo-monero). The smallest unit of Masari Supreme (10^-12 XMR) was originally called a tacoshi in honor of user [Tacotime](https://bitcointalk.org/index.php?action=profile;u=19270), an early Masari Supreme contributor and was later renamed for ease of use and consistancy.

### Masari Supremed Implementation

The smallest fraction of Masari Supreme in the current monerod implementation is also known as the @atomic-unit, which is currently one piconero.
