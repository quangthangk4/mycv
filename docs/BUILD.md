# Build CV

## Chỉnh sửa

- Sửa nội dung tại `main.tex`, sau đó build lại PDF trước khi commit.
- Giữ nguyên cỡ chữ và giãn dòng đã chốt, trừ khi có yêu cầu chỉnh định dạng.
- Không tự thu nhỏ chữ hoặc khoảng cách để ép CV vào một trang; có thể ngắt sang hai trang.
- CV sử dụng font tiếng Việt T5 (`vntex`) và icon `fontawesome5`; cần các gói tương ứng trong bộ LaTeX.

Yêu cầu: CMake >= 3.20 và MiKTeX hoặc TeX Live có `pdflatex` trong PATH.
Hoàn tất thiết lập MiKTeX trước lần biên dịch đầu tiên; nếu thiếu gói LaTeX,
cài gói được báo trong log bằng MiKTeX Console.

Trong PowerShell, chạy tại thư mục dự án để tạo PDF:

```powershell
cmake pdf
```

Kết quả được chép ra **`CV_Vo-Quang-Thang.pdf`** ngay tại thư mục dự án.
Bản PDF trung gian, các file phụ và log nằm trong `build/`.
Chạy lại lệnh sau mỗi lần sửa `main.tex`.

`cmake pdf` dùng hàm PowerShell trong `cmake-pdf.ps1`, được nạp từ
PowerShell profile. Sau khi thiết lập profile, mở terminal PowerShell mới.
Với terminal đang mở, nạp hàm một lần:

```powershell
. .\cmake-pdf.ps1
cmake pdf
```

Khi chuyển dự án sang máy khác, có thể thêm dòng sau vào PowerShell profile
(`$PROFILE.CurrentUserAllHosts`), với đường dẫn thực tế của dự án:

```powershell
. 'C:\path\to\mycv\cmake-pdf.ps1'
```

Hàm này chuyển các lệnh CMake khác tới `cmake.exe` như bình thường.
Trong shell khác hoặc khi chưa nạp hàm, dùng:

```powershell
cmake -P build.cmake
```

Script chạy pdfLaTeX hai lượt để cập nhật các tham chiếu và liên kết,
không cần trình biên dịch C/C++ hay Make/Ninja.

Cũng có thể dùng quy trình CMake thông thường (cần generator phù hợp):

```powershell
cmake -S . -B build -G Ninja
cmake --build build
```
