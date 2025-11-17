input_format="pdf"
output_format="jpg"

for file in *.$input_format; do
    base_name=$(basename "$file" .$input_format)
    output_file="${base_name}.${output_format}"
    echo "Converting file: $file"
    convert -verbose -density 150 -trim "$file" -quality 100 -flatten -sharpen 0x1.0 "$output_file"

    echo "Converted $file to $output_file"
done
