from fastapi import FastAPI, Request
from fastapi.templating import Jinja2Templates

app = FastAPI()

# HTML 템플릿이 들어있는 폴더
templates = Jinja2Templates(directory="templates")

# ALB에서 /api 로 들어오면 Jinja2 HTML 반환
@app.get("/api")
def api(request: Request):
    return templates.TemplateResponse(
        request=request,
        name="index.html",
        context={"message": "FastAPI + Jinja2 정상 작동"}
    )

# ALB Target Group 헬스체크용
@app.get("/api/health")
def health():
    return {"status": "healthy"}
