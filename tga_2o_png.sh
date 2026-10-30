for file in *.tga; do
  gimp -i -b "(let* ((image (car (gimp-file-load RUN-NONINTERACTIVE \"$file\" \"$file\"))) \
  (drawable (car (gimp-image-get-active-layer image)))) \
  (file-png-save-defaults RUN-NONINTERACTIVE image drawable \"${file%.tga}.png\" \"${file%.tga}.png\") \
  (gimp-image-delete image))" -b "(gimp-quit 0)"
done
