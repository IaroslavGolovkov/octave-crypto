clear all;
clc;

load ('example_data/example_text.mat');
load ('example_data/example_alphabet.mat');
load ('example_data/example_crypto_alphabet.mat');

disp('Alphabet cipher example');
disp(example_text);
encrypted_text = alphabetcipher(example_text, example_alphabet, example_crypto_alphabet)
decrypted_text = alphabetdecipher(encrypted_text, example_alphabet, example_crypto_alphabet)

disp('Caesar cipher example');
cyclic_alphabet = textror(example_alphabet, 1);
encrypted_text = alphabetcipher(example_text, example_alphabet, cyclic_alphabet)
decrypted_text = alphabetdecipher(encrypted_text, example_alphabet, cyclic_alphabet)