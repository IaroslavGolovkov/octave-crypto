function decrypted_text = alphabetdecipher (text, alphabet, crypto_alphabet)
  temp_text = toupper(text);
  temp_alphabet = toupper(alphabet);
  temp_crypto_alphabet = toupper(crypto_alphabet);
  decrypted_text = blanks(length(text));
  for i = 1:length(alphabet)
    for j = 1:length(text)
      if temp_text(j) == temp_crypto_alphabet(i)
        decrypted_text(j) = temp_alphabet(i);
      endif
    endfor
  endfor
endfunction