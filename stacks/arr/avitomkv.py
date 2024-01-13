import os
import subprocess

def convert_avi_to_mkv(input_path, output_path):
    # Get a list of all AVI files in the input directory
    avi_files = [f for f in os.listdir(input_path) if f.lower().endswith('.avi')]

    # Make sure the output directory exists
    os.makedirs(output_path, exist_ok=True)

    # Iterate through each AVI file and convert to MKV
    for avi_file in avi_files:
        input_file_path = os.path.join(input_path, avi_file)
        output_file_path = os.path.join(output_path, os.path.splitext(avi_file)[0] + '.mkv')

        # FFmpeg command for conversion
        ffmpeg_command = [
            'ffmpeg',
            '-i', input_file_path,
            '-c:v', 'libx264',
            '-c:a', 'aac',
            '-strict', 'experimental',
            output_file_path
        ]

        # Execute the FFmpeg command
        subprocess.run(ffmpeg_command)

if __name__ == "__main__":
    # Specify the input and output directories
    input_directory = input('Input Path: ')
    output_directory = input('Output Path: ')

    # Convert AVI to MKV
    convert_avi_to_mkv(input_directory, output_directory)
