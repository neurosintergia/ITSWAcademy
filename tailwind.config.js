const defaultTheme = require('tailwindcss/defaultTheme');
const colors = require ('tailwindcss/colors')

module.exports = {
    purge: [
        './vendor/laravel/framework/src/Illuminate/Pagination/resources/views/*.blade.php',
        './vendor/laravel/jetstream/**/*.blade.php',
        './storage/framework/views/*.php',
        './resources/views/**/*.blade.php',
    ],

    theme: {
        extend: {
            fontFamily: {
                sans: ['Nunito', ...defaultTheme.fontFamily.sans],
            },
            colors: {
                trueGray: colors.trueGray,
                orange: colors.orange,
                greenLime: colors.lime,
            }
        },
    },

    variants: {
        extend: {
            opacity: ['disabled'],
        },
    },
    corePlugins: {
        container: false,
    },

    plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
};
