<script>
export default {
    data() {
        return {
            say: "Hello",
            name: "Mauricio Daza",
            isColorBlue: "color: blue",
            arrayFruits: ["🍒","🍓","🍎","🍏","🍍","🍑","🍋","🍐","🌶️","🥑","🍌","🥝"],
            objectFruit: { 
                name: 'Orange',
                description: 'Lorem nostrud ut incididunt ex aliqua eu excepteur elit nisi amet.',
                price: '1.00'
    	    },
            arrayFruitObject: [
                { 
                    name: 'Orange🍊',
                    description: 'Lorem nostrud ut incididunt ex aliqua eu excepteur elit nisi amet.',
                    price: '1.00',
                    stock: 5
                },
                { 
                    name: 'Apple 🍎',
                    description: 'Occaecat tempor sint aute non culpa in ullamco ipsum do fugiat cillum.',
                    price: '3.00',
                    stock: 10
                },
                { 
                    name: 'pineapple 🍍',
                    description: 'Quis in sint adipisicing aliqua tempor ut ullamco non in.',
                    price: '3.00',
                    stock: 0
                },
                { 
                    name: 'watermelon 🍉',
                    description: 'Est Lorem enim minim nostrud occaecat cillum eiusmod Lorem sunt aliquip.',
                    price: '5.00',
                    stock: 3
                }
            ]
        }
    }
}
</script>

<template>
    <h1>{{ say }} {{ name.toUpperCase() }}</h1>
    <h2 :style="isColorBlue">Color azul</h2>
    <ul>
        <li v-for="(fruit, index) in arrayFruits" :key="index">
            {{ index }} - {{ fruit }}
        </li>
    </ul>
    <ul>
        <li v-for="(value, key, idx) in objectFruit" :key="idx">
           {{ key }}: {{ value }}
        </li>
    </ul>
    <ul>
        <template v-for="fruit in arrayFruitObject" :key="fruit.name">
            <li  v-if="fruit.stock > 5">
                {{ fruit.name }} {{ fruit.price }}
            </li>
        </template>
    </ul>
</template>

<style scoped>
h1 {
    color: tomato;
}
</style>